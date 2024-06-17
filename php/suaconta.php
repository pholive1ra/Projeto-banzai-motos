<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sua conta</title>
    <script defer src="js/suaconta.js"></script>
    <link rel="stylesheet" href="suaconta.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Minha Conta</h1>
           <a href="index.php"> <button class="custom-button">
             <span class="arrow"></span>
                Voltar
            </button></a>
        </div>
        <div class="nav">
            <a href="#orders">Meus Pedidos</a>
            <a href="#addresses" id="link-addresses">Endereços</a>
            <a href="#personal-data" id="link-personal-data">Dados Pessoais</a>
            <a href="#alter-password"  id="link-alter-password">Alterar senha</a>
        </div>
        <div class="content">
            <h2>Bem-vindo à sua conta!</h2>
            <p>Aqui você pode gerenciar todas as informações da sua conta, incluindo pedidos, endereços e dados pessoais.</p>
        </div>
        <div id="personal-data" class="content">
            <!-- Dados pessoais serão carregados aqui -->
        </div>
        <div id="addresses" class="content"  style="display: none;">
            <!-- Endereços serão carregados aqui -->
            <?php include('addresses.php'); ?>
        </div>
        <div id="alter-password" class="content" style="display: none;">
            <!-- Formulário de alteração de senha -->
            <h2>Alterar Senha</h2>
            <form class="form-password" action="alter_password.php" method="POST">
                <label for="old-password">Senha Antiga:</label>
                <input type="password" id="old-password" name="old-password" required>
                <br>
                <label for="new-password">Nova Senha:</label>
                <input type="password" id="new-password" name="new-password" required>
                <br>
                <button class="btn-senha" type="submit">Alterar Senha</button>
            </form>
        </div>
    </div>
    <script>
        document.getElementById('link-personal-data').addEventListener('click', function() {
            document.getElementById('personal-data').style.display = 'block';
            document.getElementById('addresses').style.display = 'none';
        });

        document.getElementById('link-addresses').addEventListener('click', function() {
            document.getElementById('personal-data').style.display = 'none';
            document.getElementById('addresses').style.display = 'block';
        });

        document.getElementById('link-alter-password').addEventListener('click', function(event) {
        event.preventDefault();
        document.getElementById('personal-data').style.display = 'none';
        document.getElementById('addresses').style.display = 'none';
        document.getElementById('alter-password').style.display = 'block';
    });
    </script>
</body>
</html>
