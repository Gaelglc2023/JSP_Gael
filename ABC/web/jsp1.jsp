<%-- 
    Document   : jsp1
    Created on : 27 mar 2023, 19:04:15
    Author     : gaelc
--%>

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
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
}

h1 {
    color: #007bff;
    font-size: 2.5rem;
    margin-top: 2rem;
}

h2 {
    color: #dc3545;
    font-size: 1.5rem;
    margin-top: 2rem;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 2rem;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.btn {
    display: inline-block;
    padding: 0.5rem 1rem;
    border-radius: 5px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    transition: background-color 0.2s;
}

.btn:hover {
    background-color: #0069d9;
}

        </style>
    </head>
    <body>
       <div class="container">
            <h2><%=request.getParameter("numero") == null? "Sin dato" : request.getParameter("numero") %></h2>
            <% int x = (int)((Math.random() * 100 ));
                if( x < 50 )
                {
            %>
                    <h1>Es menor a 50</h1>
            <%
                }
                else
                {
            %>
                    <h1>Es mayor o igual a 50</h1>
            <%
                }
            %>
            <h1>El valor es <%=x%></h1>
            <a href="jsp2.jsp" class="btn btn-primary mt-3">Ir a jsp2</a>
            <a href="index.html" class="btn btn-primary mt-3">Regresar al index</a>
        </div>
    </body>
</html>
