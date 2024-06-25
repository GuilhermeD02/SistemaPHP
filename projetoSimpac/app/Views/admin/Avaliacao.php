<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $titulo ?></title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
    <h2 class="text-center"><?php echo $titulo ?></h2>
    
    <div class="alert alert-info" role="alert">
      <strong>Nota:</strong> As notas devem estar no intervalo de 0 a 10.
      <br><?php if (auth()->loggedIn()) : ?>
      <span><b>Olá <?php echo auth()->user()->username ;
      date_default_timezone_set('America/Sao_Paulo');
      $horaAtual = (int) date('H');
      $mensagens = [
        'bom_dia' => ', Bom dia!',
        'boa_tarde' => ', Boa tarde!',
        'boa_noite' => ', Boa noite!',
      ];
      if ($horaAtual >= 5 && $horaAtual < 12) {
        echo $mensagens['bom_dia'];
      } elseif ($horaAtual >= 12 && $horaAtual < 18) {
        echo $mensagens['boa_tarde'];
      } else {
        echo $mensagens['boa_noite'];
      }
      ?></b></span>
      <?php endif; ?><?php ?></br>
      
      <br><?php	echo $msg ?></br>

    </div>
    
    <form method="post">
      <table class="table table-bordered">
        <tr>
          <td>Introdução:</td>
          <td><input type="number" name="introducao" class="form-control" min="0" max="10" step="0.1"/></td>
        </tr>
        <tr>
          <td>Organização:</td>
          <td><input type="number" name="organizacao" class="form-control" min="0" max="10" step="0.1"/></td>
        </tr>
        <tr>
          <td>Repetições:</td>
          <td><input type="number" name="repeticoes" class="form-control" min="0" max="10" step="0.1"/></td>
        </tr>
        <tr>
          <td>Apresentação:</td>
          <td><input type="number" name="apresentacao" class="form-control" min="0" max="10" step="0.1"/></td>
        </tr>
        <tr>
          <td>Conclusão:</td>
          <td><input type="number" name="conclusao" class="form-control" min="0" max="10" step="0.1"/></td>
        </tr>
        <tr>
          <td>Tempo de apresentação:</td>
          <td><input type="number" name="tempo" class="form-control" min="0" max="10" step="0.1"/></td>
        </tr>
        <tr>
          <td colspan="2" class="text-center">
            <input type="submit" value="<?php echo $acao ?>" class="btn btn-primary"/>
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>