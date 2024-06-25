<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Submissao</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
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

<div class="container mt-5">
    <h1 class="display-4 text-center">Exibir</h1>
    <h3 class="h4 text-center">Artigos Submetidos</h3>
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th scope="col">Código/Id</th>
                    <th scope="col">Título do Trabalho</th>
                    <th scope="col">Curso</th>
                    <th scope="col">Autor</th>
                    <th scope="col">Situação</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($informacoes as $informacao): ?>
                    <tr>
                        <td><?php echo $informacao['id'] ?></td>
                        <td><?php echo $informacao['nometrab'] ?></td>
                        <td><?php echo $informacao['curso'] ?></td>
                        <td><?php echo $informacao['autor'] ?></td>
                        <td><?php echo $informacao['situacao'] ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <div class="row">
        <?php echo $pager->links('default','paginacao_full') ?>
    </div>
</div>

</body>
</html>
