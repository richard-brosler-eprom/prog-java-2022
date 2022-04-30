<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="br.senaibauru.empregos.ConectaBD"%>
<%
int l = Integer.parseInt(request.getParameter("lista"));
String sql;
String titulo;
if (l == 1) {
    sql = "select * from vagas where aberta = 1";
    titulo = "Lista de vagas de emprego em aberto";
} else {
    if (l == 2) {
        sql = "select * from vagas where aberta = 0";
        titulo = "Lista de vagas de emprego encerradas";
    } else {
        sql = "select * from vagas";
        titulo = "Lista geral de vagas de emprego";
    }
}
try {
    ConectaBD cbd = new ConectaBD();
    Connection conn = cbd.Conectar();
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(sql);
    DecimalFormat df = new DecimalFormat("#,##0.00");
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
    <header><h3><%=titulo%></h3></header>
    <table class="table table-bordered table-striped table-hover">
        <tr>
            <th>Id Vaga</th>
            <th>Descrição</th>
            <th>Req.Obrigatórios</th>
            <th>Req.Desejáveis</th>
            <th>Remuneração</th>
            <th>Aberta</th>
            <th>Benefícios</th>
            <th>Local de Trabalho</th>
        </tr>
        <%
        while (rs.next()) {
        %>
        <tr>
            <td><%=rs.getInt("idvaga")%></td>
            <td><%=rs.getString("descricao")%></td>
            <td><%=rs.getString("req_obrigatorios")%></td>
            <td><%=rs.getString("req_desejaveis")%></td>
            <td style="text-align: right;"><%=df.format(rs.getFloat("remuneracao"))%></td>
            <td style="text-align: center;"><%=rs.getInt("aberta")%></td>
            <td><%=rs.getString("beneficios")%></td>
            <td><%=rs.getString("local_trabalho")%></td>
        </tr>
        <%
        } // fecha while
        rs.close();
        st.close();
        conn.close();
        } // fecha try
        catch (Exception e) {
        out.println("Ocorreu uma exceção - " + e.getMessage());
        }
        %>
    </table>
    <div>
        <form action="index.jsp" method="get">
            <input type="submit" value="Voltar">
        </form>

    </div>
</body>
</html>