<%-- 
    Document   : index
    Created on : 13 de set. de 2021, 21:43:43
    Author     : T-Gamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .flex{
            display: flex;
        }
        .mx-5{
            margin-left: 5px;
            margin-right: 5px;
        }
    </style>
    <body>
        <div class="flex">
            <div class="mx-5">
                <%@include file="WEB-INF/jspf/menu.jspf" %>
            </div>

            <div class="mx-5">
                <%@include file="WEB-INF/jspf/header.jspf" %>

                <section>
                    <div>
                        <h1>Javã Gabriel Rigamonti</h1>
                        <p>RA: 1290482013044</p>
                    </div>
                    
                </section>

                <%@include file="WEB-INF/jspf/footer.jspf" %>
            </div>
        </div>
    </body>
</html>
