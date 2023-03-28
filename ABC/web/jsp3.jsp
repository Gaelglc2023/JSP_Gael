<%-- 
    Document   : jsp3
    Created on : 27 mar 2023, 19:04:34
    Author     : gaelc
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="source.Datos"%>
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
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }
        h1 {
            font-size: 2.5rem;
            margin-top: 2rem;
            margin-bottom: 1rem;
            text-align: center;
        }
        form {
            margin: 2rem auto;
            max-width: 500px;
            padding: 2rem;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
            border-collapse: collapse;
        }
        td {
            padding: .5rem;
            vertical-align: middle;
            border-top: 1px solid #dee2e6;
        }
        input[type="submit"] {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
            padding: .5rem 1rem;
            border-radius: 5px;
            transition: background-color .2s ease-in-out, border-color .2s ease-in-out;
        }
        input[type="submit"]:hover {
            background-color: #0069d9;
            border-color: #0062cc;
        }
    </style>
</head>
<body>
    <%
        String nombre = null;
        String calif = null;
        String guardar = null;
        String id = null;
        String editar = null;
        String accion = "guardar";
        String actualizar = "guardar";
        Datos datos = null;
        Integer idx = null;
        List<Datos>lista = null;

        session = request.getSession(true);
        if (session != null) {
            if (session.getAttribute("lista") == null) {
                session.setAttribute("lista", new ArrayList<Datos>());
            }
            lista = (List)session.getAttribute("lista");
        }
        nombre = request.getParameter("nombre");
        calif = request.getParameter("calif");
        guardar = request.getParameter("guardar");
        id = request.getParameter("id");
        editar = request.getParameter("editar");
        actualizar = request.getParameter("actualizar");

        if ("Submit".equals(editar)) {
            idx = Integer.parseInt(id);
            if (idx < lista.size()) {
                datos = lista.get(idx);
            }
            accion = "actualizar";
        }

        if ("Enviar".equals(guardar) || "Enviar".equals(actualizar)) {
            if ("Enviar".equals(guardar)) {
                datos = new Datos();
            } else {
                datos = lista.get(Integer.parseInt(id));
            }
            datos.setNombre(nombre);
            datos.setCalf(Float.parseFloat(calif));
            if ("Enviar".equals(guardar)) {
                lista.add(datos);
            }
    %>
            <h1>EXITO!</h1>
            <script>
                console.log("Exito");
            </script>
                <a href="jsp2.jsp">Ir a jsp2 </a>
        <%
            }
            if( datos == null )
            {
                datos = new Datos( );
                datos.setNombre( "" );
                datos.setCalf( 0f );

            }
            if( !"Enviar".equals( guardar ) && !"Enviar".equals( actualizar ) )
            {
        %>  
        <form id="form1">
            <table border="1">
                <tr>
                    <td>Nombre</td>
                    <td><input id="nombre" name="nombre" value="<%=datos.getNombre()%>" type="text"/></td>

                </tr>
                <tr>
                    <td>Calificación</td>
                    <td><input id="calif" name="calif" value="<%=datos.getCalf()%>" type="number"/>
                        <%
                            if( "Submit".equals( editar ) )
                            {
                        %>
                                <input type="hidden" name="id" id="id" value="<%=id%>" />
                        <%
                            }
                        %>
                    </td>
                </tr>
                <tr >
                    <td colspan="2">
                        <input type="Submit" id="Guardar" name="<%=accion%>" />
                    </td>
                </tr>
            </table>
        </form>
        <%
            }
        %>
    </body>
</html>