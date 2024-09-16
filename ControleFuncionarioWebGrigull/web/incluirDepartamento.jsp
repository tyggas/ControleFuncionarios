<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="controlefuncionario.Departamento" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Departamentos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Lista de Departamentos</h1>
        <table border="1" cellpadding="10" cellspacing="0">
            <tr>
                <th>ID</th>
                <th>Descrição</th>
            </tr>
            <%
                Departamento departamento = new Departamento();
                List<Departamento> listaDeptos = null;
                try {
                    listaDeptos = departamento.listarDeptos();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }

                if (listaDeptos != null) {
                    for (Departamento dep : listaDeptos) {
            %>
                <tr>
                    <td><%= dep.getIdDepto() %></td>
                    <td><%= dep.getDescDepto() %></td>
                </tr>
            <%
                    }
                } else {
            %>
                <tr>
                    <td colspan="2">Nenhum departamento encontrado.</td>
                </tr>
            <%
                }
            %>
        </table>
        <a href="departamento.html">Incluir Novo Departamento</a>
    </div>
</body>
</html>
