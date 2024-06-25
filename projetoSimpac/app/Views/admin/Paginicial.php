<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projetos Simpac</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa; 
            color: #333;
            font-family: 'Roboto', sans-serif; 
        }
        .main-text {
            color: #555; /* Cor do texto principal */
            font-weight: 700;
        }
        /* Estilos para o cabeçalho */
        .navbar {
            background-color: #fff; 
        }
        .nav-link {
            color: #555 !important; 
            font-weight: 700; 
        }
        .nav-link:hover {
            color: #007bff !important; 
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="navbar-brand" href="#">
    <img src="https://cdn.univicosa.com.br/files/portal/logo/vertical_png.png" style="width:120px" alt="">
</a>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="<?= base_url("/index.php/admin")?>"><span class="sronly">Página Inicial</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url("/index.php/admin/Avaliacao")?>">Avaliação</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url("/index.php/admin/exibirAvaliacao")?>">Exibir Avaliação</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url("/index.php/admin/inserirADM")?>">Inserir</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url("/index.php/admin/verSubmissao")?>">Exibir Artigos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url("/index.php/logout")?>">Desconectar</a>
        </li>
      </ul>
    </div>
</nav>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="text-center main-text">
                <h1>Bem-vindo ao Sistema de Cadastro de Artigos - Projetos Simpac Administrador</h1>
                <p>Seja bem-vindo ao sistema de cadastro de artigos da nossa faculdade! Aqui você poderá registrar e gerenciar todos os seus projetos acadêmicos de forma simples e organizada.</p>
                <h3>O que é o Projetos Simpac?</h3>
                <p>O Projetos Simpac é uma plataforma desenvolvida para facilitar o processo de registro e acompanhamento de artigos científicos e projetos de pesquisa realizados pelos estudantes e pesquisadores da nossa instituição.</p>
                <ul>
                    <li>Registrar novos artigos e projetos;</li>
                    <li>Manter um histórico de suas contribuições acadêmicas;</li>
                    <li>Colaborar com colegas em projetos em andamento;</li>
                    <li>Acompanhar o progresso e as atualizações dos seus projetos.</li>
                </ul>
                <h3>Como começar:</h3>
                <p>Para começar a usar o sistema, basta fazer login utilizando suas credenciais fornecidas pela faculdade. Se ainda não possui uma conta, entre em contato com o administrador do sistema para obter acesso.</p>
                <h3>Explorando o sistema:</h3>
                <p>Após fazer login, você será direcionado ao seu painel de controle, onde poderá encontrar todas as funcionalidades disponíveis para você. Não hesite em explorar e experimentar todas as opções disponíveis.</p>
                <h3>Suporte e feedback:</h3>
                <p>Estamos sempre trabalhando para melhorar o Projetos Simpac e torná-lo uma ferramenta ainda mais útil para a nossa comunidade acadêmica. Se tiver alguma dúvida, problema ou sugestão, não hesite em entrar em contato conosco. Sua opinião é fundamental para nós!</p>
                <p>Aproveite ao máximo o Projetos Simpac e boa pesquisa!</p>
            </div>
        </div>
    </div>
</div>

</body>
</html>
