<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="br.senaibauru.empregos.ConectaBD"%>
<%@ page import="java.text.DecimalFormat"%>
<%
String iv = request.getParameter("id");
try {
    ConectaBD cbd = new ConectaBD();
    Connection conn = cbd.Conectar();
    Statement st = conn.createStatement();
    String sql = "select * from vagas where idvaga = " + iv;
    ResultSet rs = st.executeQuery(sql);
    rs.next();
    DecimalFormat df = new DecimalFormat("#,##0.00");
    String rmn = df.format(rs.getFloat("remuneracao"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
  <link rel="stylesheet" href="css/estilo.css">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/jquery-maskmoney/3.0.2/jquery.maskMoney.min.js"></script>
<!--Construçãoo de máscaras pelo JQUERY-->
<script type="text/javascript">
    $(function() {
        $('.mask-real').maskMoney({
            showSymbol : true,
            symbol : 'R$ ',
            decimal : ',',
            thousands : '.',
            allowZero : true
        }); // valor monetário
    });
</script>
</head>
<div align=center>Sistema de Controle de Vagas de Emprego</div>
<div align=center>Alteração</div>
<br>
<div>
    <form action="emp_021-1.jsp" method="post">
        <input type="hidden" name="idvg" value="<%=iv%>">
        <table>
            <tr>
                <td>Descrição</td>
                <td><input type="text" name="dsc" required maxlength=45 size=45
                    value="<%=rs.getString("descricao")%>"></td>
            </tr>
            <tr>
                <td>Requisitos Obrigatórios</td>
                <td><input type="text" name="rob" required maxlength=45 size=45
                    value="<%=rs.getString("req_obrigatorios")%>"></td>
            </tr>
            <tr>
                <td>Requisitos Desejáveis</td>
                <td><input type="text" name="rde" maxlength=45 size=45
                    value="<%=rs.getString("req_desejaveis")%>"></td>
            </tr>
            <tr>
                <td>Remuneração</td>
                <td><input type="text" name="rem" required class="mask-real"
                    size=8 style="text-align: right" value="<%=rmn%>"></td>
            </tr>
            <tr>
                <td>Vaga</td>
                <td><input type="radio" name="vag" value="1" checked>Aberta
                    <input type="radio" name="vag" value="0">Encerrada</td>
            </tr>
            <tr>
                <td>Benefícios</td>
                <td><input type="text" name="ben" required maxlength=45 size=45
                    value="<%=rs.getString("beneficios")%>"></td>
            </tr>
            <tr>
                <td>Local de Trabalho</td>
                <td><input type="text" name="ltr" required maxlength=45 size=45
                    value="<%=rs.getString("local_trabalho")%>"></td>
            </tr>
            <tr>
                <td colspan=2>&nbsp;</td>
            </tr>
            <tr>
                <th colspan=2><input type="submit" value="Enviar"></th>
            </tr>
        </table>
    </form>
</div>
<%
rs.close();
st.close();
conn.close();
} // fecha try
catch (Exception e) {
out.println("Ocorreu uma exceção - " + e.getMessage());
}
%>
</body>
</html>