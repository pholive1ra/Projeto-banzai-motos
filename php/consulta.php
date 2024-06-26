<?php
    include_once('config.php');

    // Verifica se há uma requisição para deletar um usuário
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['delete']) && isset($_POST['id'])) {
        $idToDelete = $conexao->real_escape_string($_POST['id']);
        $deleteSQL = "DELETE FROM usuarios WHERE id = '$idToDelete'";
        if ($conexao->query($deleteSQL)) {
            // Redireciona com um parâmetro de sucesso
            header("Location: {$_SERVER['PHP_SELF']}?deleted=success");
            exit;
        }
        
    }
    // Verifica se houve ação para download de PDF
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['download_pdf'])) {
        require_once('../TCPDF/tcpdf.php'); // Caminho relativo ao diretório atual
    
        // Inicializa o objeto TCPDF
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
    
        // Configurações do documento
        $pdf->SetCreator(PDF_CREATOR);
        $pdf->SetAuthor('Seu Nome');
        $pdf->SetTitle('Lista de Usuários');
        $pdf->SetSubject('Lista de Usuários do Banco de Dados');
        $pdf->SetKeywords('PDF, Lista, Usuários, Banco de Dados');
    
        // Adiciona página
        $pdf->AddPage();
    
        // Consulta ao banco de dados para obter os usuários
        $sql = "SELECT id, nome, cpf, email FROM usuarios";
        $result = $conexao->query($sql);
    
        if ($result->num_rows > 0) {
            // Monta tabela no PDF
            $html = '<table border="1">
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>CPF</th>
                            <th>Email</th>
                        </tr>';
    
            while ($row = $result->fetch_assoc()) {
                $html .= '<tr>';
                $html .= '<td>' . $row['id'] . '</td>';
                $html .= '<td>' . $row['nome'] . '</td>';
                $html .= '<td>' . $row['cpf'] . '</td>';
                $html .= '<td>' . $row['email'] . '</td>';
                $html .= '</tr>';
            }
    
            $html .= '</table>';
    
            // Adiciona o conteúdo ao PDF
            $pdf->writeHTML($html, true, false, true, false, '');
    
            // Saída do PDF (download)
            $pdf->Output('lista_usuarios.pdf', 'D');
            exit;
        } else {
            echo "Nenhum usuário encontrado para gerar o PDF.";
        }
    
        // Fecha a conexão após o uso
        $conexao->close();
    }
    ?>


<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta de Usuários</title>
    <script src="js/consulta.js"></script>
    <link rel="stylesheet" href="css/consulta.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
    <header>
        <div class="logo-header">
            <img class="logoimg" src="../imagens/logobanzai.png">
        </div>
        <h1>Consulta dos Usuários</h1>
        <nav>
            <ul>
                <li>
                    <a class="btn-dash" href="../dashboard/dash.html">Dashboard</a>
                </li>
            </ul>
        </nav>
    </header>


    <div class="container">
    <form method="POST">
        <button class="download-btn" type="submit" name="download_pdf">Baixar em PDF</button>
    </form>
        <div class="search-bar">
            <form method="POST">
                <div class="search-field">
                    <label for="tipo-filtro">Tipo de Filtro</label>
                    <select id="tipo-filtro" name="tipoFiltro">
                        <option value="nome">Nome</option>
                        <option value="id">ID</option>
                        <option value="cpf">CPF</option>
                        <option value="email">EMAIL</option>
                    </select>
                </div>
                
                <div class="search-field">
                    <label for="valor-pesquisa">Valor de Pesquisa</label>
                    <input type="text" id="valor-pesquisa" name="valorFiltro">
                </div>
                <div class="search-buttons">
                    <button type="submit" name="search">Pesquisar</button>
                </div>
            </form>
        </div>

        <table class="teste">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Email</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['search'])) {
                        $tipoFiltro = $conexao->real_escape_string($_POST['tipoFiltro']);
                        $valorFiltro = $conexao->real_escape_string($_POST['valorFiltro']);

                        $sql = "";
                        if ($tipoFiltro === 'nome') {
                            $sql = "SELECT id, nome, cpf, email FROM usuarios WHERE nome LIKE '%$valorFiltro%'";
                        } elseif ($tipoFiltro === 'id') {
                            $sql = "SELECT id, nome, cpf, email FROM usuarios WHERE id = '$valorFiltro'";
                        } elseif ($tipoFiltro === 'cpf') {
                            $sql = "SELECT id, nome, cpf, email FROM usuarios WHERE cpf = '$valorFiltro'";
                        } elseif ($tipoFiltro === 'email') {
                            $sql = "SELECT id, nome, cpf, email FROM usuarios WHERE email LIKE '%$valorFiltro%'";
                        }

                        $result = $conexao->query($sql);

                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo "<tr>";
                                echo "<td>" . $row['id'] . "</td>";
                                echo "<td>" . $row['nome'] . "</td>";
                                echo "<td>" . $row['cpf'] . "</td>";
                                echo "<td>" . $row['email'] . "</td>";
                                echo "<td>
                                    <form method='POST' onsubmit='return confirmDelete();' style='display:inline;'>
                                        <input type='hidden' name='id' value='" . $row['id'] . "' />
                                        <button type='submit' name='delete' class='delete-btn'>Deletar</button>
                                    </form>
                                  </td>";
                                echo "</tr>";
                            }
                        } else {
                            echo "<tr><td colspan='5'>Nenhum registro encontrado.</td></tr>";
                        }
                        
                    }

                    $conexao->close();
                ?>
            </tbody>
        </table>
    </div>

    <script>
        function confirmDelete() {
            return confirm('Você tem certeza que deseja deletar este usuário?');
        }

        document.addEventListener('DOMContentLoaded', function() {
            const urlParams = new URLSearchParams(window.location.search);
            if (urlParams.has('deleted') && urlParams.get('deleted') === 'success') {
                Swal.fire({
                    title: "Ação concluída",
                    text: "Conta deletada com sucesso!",
                    icon: "success"
                });
                window.history.replaceState(null, null, window.location.pathname);
            }
          
        });

        

    </script>
</body>

</html>
