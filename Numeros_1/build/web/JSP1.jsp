<%-- 
    Document   : jsp1
    Created on : 9 mar 2023, 13:11:20
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style.css">
        <title>JSP Page</title>
    </head>
    <body style="background-color: rgba(26, 82, 118, 0.5)">
        
  <nav class="navbar navbar-dark bg-dark"style="margin-bottom:6%;">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Numeros</a>
      <button type="button" class="btn-close" aria-label="Close"></button>
    </div>
  </nav>
    
<div class="container">
    <div class="row align-items-start" >
        <div class="col">
            <div class="card" style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">

        <% 
            int x = (int)(Math.random()*100);
            if(x<50)
            {
        %>
        <h1>Es menor a 50</h1>
            </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">

        <%
            }
            else
            {
        %>   
        <h1>Es mayor igual a 50</h1>
          </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">
        <%
            }  
        %>
        <h1>
        <%=
            "El numero es " + x
        %>
        </h1>
            </div>
            </div>
        </div>
    </div>
        
        <!-- Division de numeros 2 -->
        <div class="row align-items-start">
        <div class="col">
            <div class="card" style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">

        <% 
            int y = (int)(Math.random()*100);
            if(y<50)
            {
        %>
        <h1>Es menor a 50</h1>
            </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="background-color: rgba(17, 122, 101,0.5); margin-bottom: 20px;">
            <div class="card-body">

        <%
            }
            else
            {
        %>   
        <h1>Es mayor igual a 50</h1>
          </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">
        <%
            }  
        %>
        <h1>
        <%=
            "El numero es " + y
        %>
        </h1>
            </div>
            </div>
        </div>
    </div>
        
        
        <!-- Division de numeros 3 -->
                <div class="row align-items-start">
        <div class="col">
            <div class="card" style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">

        <% 
            int z = (int)(Math.random()*100);
            if(z<50)
            {
        %>
        <h1>Es menor a 50</h1>
            </div>
            </div>
        </div>
        <div class="col">
            <div class="card"style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">

        <%
            }
            else
            {
        %>   
        <h1>Es mayor igual a 50</h1>
          </div>
            </div>
        </div>
        <div class="col">
            <div class="card"style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">
        <%
            }  
        %>
        <h1>
        <%=
            "El numero es " + z
        %>
        </h1>
            </div>
            </div>
        </div>
    </div>
        
        
        <!--Division de numeros 4 -->
                <div class="row align-items-start">
        <div class="col">
            <div class="card"style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">

        <% 
            int a = (int)(Math.random()*100);
            if(a<50)
            {
        %>
        <h1>Es menor a 50</h1>
            </div>
            </div>
        </div>
        <div class="col">
            <div class="card"style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">

        <%
            }
            else
            {
        %>   
        <h1>Es mayor igual a 50</h1>
          </div>
            </div>
        </div>
        <div class="col">
            <div class="card"style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">
        <%
            }  
        %>
        <h1>
        <%=
            "El numero es " + a
        %>
        </h1>
            </div>
            </div>
        </div>
    </div>
        
        
        <!--Division de numeros 5 -->
                <div class="row align-items-start">
        <div class="col">
            <div class="card"style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">

        <% 
            int d = (int)(Math.random()*100);
            if(d<50)
            {
        %>
        <h1>Es menor a 50</h1>
            </div>
            </div>
        </div>
        <div class="col">
            <div class="card"style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">

        <%
            }
            else
            {
        %>   
        <h1>Es mayor igual a 50</h1>
          </div>
            </div>
        </div>
        <div class="col">
            <div class="card"style="background-color: rgba(17, 122, 101, 0.5); margin-bottom: 20px;">
            <div class="card-body">
        <%
            }  
        %>
        <h1>
        <%=
            "El numero es " + d
        %>
        </h1>
            </div>
            </div>
        </div>
    </div>
</div>
    </body>
</html>
