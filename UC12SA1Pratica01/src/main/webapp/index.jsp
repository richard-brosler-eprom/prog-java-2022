<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
  <link rel="stylesheet" href="css/estilo.css">
  <title>Sistema de Controle de Vagas de Emprego</title>
</head>
<body>
  <header>
    <h3>Sistema de Controle de Vagas de Emprego</h3>
    <div class="espaco_div"></div>
    <nav>
      <ul class="nav">
        <li class="nav-item">
          <a class="nav-link" href="emp_010.jsp">Cadastrar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="emp_020.jsp">Alteração / Exclusão</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Listar Vagas</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="emp_030.jsp?lista=1">Listar Vagas em aberto</a></li>
            <li><a class="dropdown-item" href="emp_030.jsp?lista=2">Listar Vagas encerradas</a></li>
            <li><a class="dropdown-item" href="emp_030.jsp?lista=3">Listar todas as Vagas</a></li>
          </ul>
        </li>      
      </ul>      
    </nav>
    <div class="btnLogin">
      <i class="bi bi-box-arrow-right"></i>
      <span>Login</span>
    </div>
  </header>

  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>