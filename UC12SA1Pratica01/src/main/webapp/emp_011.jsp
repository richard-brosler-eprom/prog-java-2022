<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="br.senaibauru.empregos.Vagas"%>
<%
String dc = request.getParameter("dsc");
String ro = request.getParameter("rob");
String rd = request.getParameter("rde");
String rex = request.getParameter("rem");
// converte string valor para float
String vx = rex;
vx = vx.replace(".", "");
vx = vx.replace(",", ".");
float vr = Float.parseFloat(vx);
String be = request.getParameter("ben");
String lt = request.getParameter("ltr");
//---- Back-End -----------------------
Vagas v = new Vagas();
v.setDescricao_cc(dc);
v.setReq_obrigatorios_cc(ro);
v.setReq_desejaveis_cc(rd);
v.setRemuneracao_cc(vr);
v.setBeneficios_cc(be);
v.setLocal_trabalho_cc(lt);
v.Incluir();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema de Controle de Vagas de Emprego</title>
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
  <link rel="stylesheet" href="css/estilo.css">
</head>
<body>
    <div>Sistema de Controle de Vagas de Emprego</div>
    <br>
    <div>
        <table>
            <tr>
                <td>Descrição</td>
                <td style="color: blue"><%=dc%></td>
            </tr>
            <tr>
                <td>Requisitos Obrigatórios</td>
                <td style="color: blue"><%=ro%></td>
            </tr>
            <tr>
                <td>Requisitos Desejáveis</td>
                <td style="color: blue"><%=rd%></td>
            </tr>
            <tr>
                <td>Remuneração</td>
                <td style="color: blue"><%=rex%></td>
            </tr>
            <tr>
                <td>Benefício</td>
                <td style="color: blue"><%=be%></td>
            </tr>
            <tr>
                <td>Local de Trabalho</td>
                <td style="color: blue"><%=lt%></td>
            </tr>
            <tr>
                <th colspan=2 style="color: green">Vaga incluída com sucesso.</th>
            </tr>
        </table>
    </div>
    <br>
    <div>
        <form action="index.jsp" method="get">
            <input type="submit" value="Voltar">
        </form>
    </div>
</body>
</html>
