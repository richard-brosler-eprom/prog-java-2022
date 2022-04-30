<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.senaibauru.empregos.Vagas"%>    
<%
Integer iv = Integer.parseInt(request.getParameter("id"));
Vagas v = new Vagas();
v.setIdvaga_cc(iv);
v.Excluir();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
    crossorigin="anonymous">
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/estilo.css">
</head>
<body>
    <div>Exclusão de Vaga de Emprego</div>
    <br>
    <br>
    <div>
        Vaga
        <%=iv%>
        Excluída
    </div>
    <br>
    <br>
    <div>
        <form action="index.jsp" method="get">
            <input type="submit" value="Voltar">
        </form>
    </div>
</body>
</html>