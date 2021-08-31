<%-- 
    Document   : date-time
    Created on : 30 de ago. de 2021, 21:10:36
    Author     : T-Gamer
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int n=0;
    String error = null;
    try{
        n = Integer.parseInt(request.getParameter("n"));
        
    }catch(Exception e){
        error = "O valor informado como parêmetro n1 '"+request.getParameter("n1")+"' não é um número válido";
    
%>
<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Soma</h3>
        <h4><a href="index.html">Voltar</a></h4>
        <hr/>
        <%if(error != null){%>
        <div style="color: red"><%= error %></div>
        <%}else{%>
        <div><%= n1 %> + <%= n2 %> = <%= result %></div>
        <%}%>
    </body>
</html>
