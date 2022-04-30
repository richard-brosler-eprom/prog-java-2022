<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="br.senaibauru.empregos.ConectaBD"%>
<%
String sql = "select p.id, p.descricao, p.remuneracao, p.beneficios,"+
             "       l.descricao local_descricao, c.localidade cidade,"+
			 "       u.sigla uf "+
			 " from __________ p "+
			 "   inner join ___________ l on __________ "+
			 "   inner join ___________ c on __________ "+
			 "   inner join ___________ u on __________ "+
			 " order by p.id";
try {
    ConectaBD cbd = new ConectaBD();
    Connection conn = cbd.Conectar();
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(sql);
    DecimalFormat df = new DecimalFormat("#,##0.00");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- CSS only -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
    crossorigin="anonymous">
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/estilo.css">
<title>Sistema de Controle de Vagas de Emprego - Alteração</title>
</head>
<body>
    <header>
        <h3>Lista de Vagas de Emprego em aberto</h3>
    </header>
    <section id="lista_vagas">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>Id Vaga</th>
                    <th>Descrição</th>
                    <th>Req.Obrigatórios</th>
                    <th>Req.Desejáveis</th>
                    <th>Remuneração</th>
                    <th>Aberta</th>
                    <th>Benefícios</th>
                    <th>Local de Trabalho</th>
                    <th>Alteração</th>
                    <th>Exclusão</th>
                </tr>
            </thead>
            <tbody>
                <%
                while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getInt("idvaga")%></td>
                    <td><%=rs.getString("descricao")%></td>
                    <td><%=rs.getString("req_obrigatorios")%></td>
                    <td><%=rs.getString("req_desejaveis")%></td>
                    <td style="text-align: right;"><%=df.format(rs.getFloat("remuneracao"))%></td>
                    <td><%=rs.getInt("aberta")%></td>
                    <td><%=rs.getString("beneficios")%></td>
                    <td><%=rs.getString("local_trabalho")%></td>
                    <td><a href="emp_021.jsp?id=<%=rs.getInt("idvaga")%>"> <i
                            class="bi bi-pencil-square"></i></a></td>
                    <td><a href="emp_022.jsp?id=<%=rs.getInt("idvaga")%>"
                        onclick="return confirm('Confirma Exclusão?');"> <i
                            class="bi bi-trash"></i></a></td>
                </tr>
                <%
                }
                rs.close();
                st.close();
                conn.close();
                } // fecha try
                catch (Exception e) {
                out.println("Ocorreu uma exceção - " + e.getMessage());
                }
                %>
            </tbody>
        </table>
        <div>
            <form action="index.jsp" method="get">
                <input type="submit" value="Voltar">
            </form>
        </div>
    </section>
    <!-- JavaScript Bundle with Popper -->
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>