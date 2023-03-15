<%-- 
    Document   : JSP2
    Created on : 14 mar 2023, 19:32:03
    Author     : gaelc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" integrity="sha384-GmglQQU97X5j5W5R5x5xkMhEi3jI/Yf+/mb8b+O/hPPfH1XpZMAgJfP38e7P47+" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-h9XU6E+8WzL+EyHnpdTKzJg1Y8+tWZGxzoVpJX9TciTI+u8+EihMk7V3fAVL4+v7" crossorigin="anonymous"></script>
        <title>JSP Page</title>
            <style>
                body {
                    background-color: #7F7F7F;
                }
            </style>
    </head>
    <body>
             <!-- Barra de navegación -->
    <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Tabla </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Acerca de</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container my-4">
        <h1 class="text-center mb-4">Tabla de calificaciones</h1>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Calificación</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            // Generar nombres aleatorios
                            String[] nombres = {"Juan", "Maria", "Pedro", "Sofia", "Luis", "Ana", "Carlos", "Laura", "Jorge", "Fernanda"};
                            String[] nombresAleatorios = new String[5];
                            for (int i = 0; i < nombresAleatorios.length; i++) {
                                int indice = (int) (Math.random() * nombres.length);
                                nombresAleatorios[i] = nombres[indice];
                            }
                            
                            // Generar calificaciones aleatorias
                            int[][] calificaciones = new int[5][2];
                            for (int i = 0; i < calificaciones.length; i++) {
                                for (int j = 0; j < calificaciones[i].length; j++) {
                                    calificaciones[i][j] = (int) (Math.random() * 10) + 1;
                                }
                            }
                            for (int i = 0; i < nombresAleatorios.length; i++) { 
                        %>
                        <tr>
                            <td><%= nombresAleatorios[i] %></td>
                            <td><%= calificaciones[i][0] %></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
        </div>
    </div>
</div>
    </body>
</html>
