<%-- 
    Document   : jsp2
    Created on : 27 mar 2023, 19:04:23
    Author     : gaelc
--%>

<%@page import="java.util.List"%>
<%@page import="source.Datos"%>
<%@page import="source.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>JSP Page</title>
        <style>
        body {
            padding: 2rem;
        }

        h1 {
            margin-bottom: 2rem;
        }

        table {
            margin-top: 2rem;
        }

        td {
            padding: 0.5rem;
            vertical-align: middle;
        }

        td.actions {
            text-align: center;
        }

        .btn-primary {
            margin-right: 0.5rem;
        }
    </style>
    </head>
    <body>
        <div class="container mt-5">
        <h1>Tabla ABC</h1>
        <% int i = 0;
            List<Datos> lista = null;
            String id = null;
            String borrar = null;
            session = request.getSession(true);

            if (session != null) {
                if (session.getAttribute("lista") != null) {
                    lista = (List) session.getAttribute("lista");
                }
            }
            id = request.getParameter("id");
            borrar = request.getParameter("borrar");
            if ("Submit".equals(borrar)) {
                lista.remove(Integer.parseInt(id));
            }
        %>
        <a href="jsp1.jsp" class="btn btn-primary me-2">Regresar a jsp1 v1</a>
        <a href="jsp3.jsp" class="btn btn-primary">ir a jsp3</a>
        <table class="table table-bordered table-striped mt-3">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Cal</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% if (lista != null && !lista.isEmpty()) {
                    for (Datos datos : lista) {
                %>
                <tr>
                    <td><%= i + 1 %></td>
                    <td><%= i %></td>
                    <td><%= datos.getNombre() %></td>
                    <td><%= datos.getCalf() %></td>
                    <td>
                        <a href="jsp2.jsp?id=<%= i %>&borrar=Submit" class="btn btn-danger me-2">Borrar</a>
                        <a href="jsp3.jsp?id=<%= i++ %>&editar=Submit" class="btn btn-primary">Editar</a>
                    </td>
                </tr>
                <% }
                } %>
            </tbody>
        </table>
    </div>
    </body>
</html>
