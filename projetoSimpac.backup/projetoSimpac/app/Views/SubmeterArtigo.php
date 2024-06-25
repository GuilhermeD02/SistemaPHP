<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!-- Meta tag para garantir a largura correta em dispositivos móveis -->
    <title><?php echo $titulo ?></title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa; 
            color: #333; 
            font-family: 'Roboto', sans-serif; 
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
 </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="<?= base_url("/index.php")?>"><span class="sronly">Página Inicial</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url("/index.php/inserir")?>">Inserir</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url("/index.php/verSubmissao")?>">Exibir Artigos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url("/index.php/logout")?>">Desconectar</a>
        </li>
      </ul>
    </div>
</nav>
<div class="container">
<h2 class="text-center text-uppercase">Cadastrar artigo para o SIMPAC</h2>
    <br>

    <form method="post">
        <div class="mb-3">
            <label for="nometrab" class="form-label">Titulo do Artigo:</label>
            <input type="text" class="form-control" id="nometrab" name="nometrab">
        </div>
        <div class="mb-3">
            <label for="autor" class="form-label">Autor:</label>
            <input type="text" class="form-control" id="autor" name="autor">
        </div>
        <div class="mb-3">
            <label for="curso" class="form-label">Curso:</label>
            <input type="text" class="form-control" id="curso" name="curso">
        </div>
        <div class="mb-3">
            <button type="submit" class="btn btn-primary">Inserir</button>
        </div>
    </form>
</div>
</body>
</html>
