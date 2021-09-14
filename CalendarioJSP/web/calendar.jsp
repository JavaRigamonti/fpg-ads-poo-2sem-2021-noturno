<%-- 
    Document   : calendar
    Created on : 1 de set. de 2021, 13:26:59
    Author     : T-Gamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int m=0, a=0;
    String error = null;
    if(request.getParameter("m")==null){
        error = "Não foi informado o parâmetro necessário 'm'";
    }if(request.getParameter("a")==null){
        error = "Não foi informado o parâmetro necessário 'a'";
    }if(Integer.parseInt(request.getParameter("m"))>12 || Integer.parseInt(request.getParameter("m"))<0){
        error = "Não foi informado o parâmetro'm' corretamente, entre 1 e 12.";
    }else{
        try{
            m = Integer.parseInt(request.getParameter("m"));
            a = Integer.parseInt(request.getParameter("a"));

        }catch(Exception e){
            error = "O valor informado como parêmetro 'm' ('"+request.getParameter("m")+"') não é um número inteiro válido";
        }
    
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%if(error != null){%>
        <div style="color: red"><%= error %></div>
        <%}else{%>
         <table border="1">
            <tr>
                <th>Domingo</th>
                <th>Segunda</th>
                <th>Terça</th>
                <th>Quarta</th>
                <th>Quinta</th>
                <th>Sexta</th>
                <th>Sábado</th>
                
            </tr>
            <%for (int i=1; i<=31; i++){%>
                <%for ( int j=0; j<=1; j++){%>
            <tr>
                <td><%= i + j %></td>
                <td><%= i + j %></td>
                <td><%= i + j %></td>
                <td><%= i + j %></td>
                <td><%= i + j %></td>
                <td><%= i + j %></td>
                <td><%= i + j %></td>
            </tr>
                <%}%>
            <%}%>
        </table>
        <hr/>
            
        <%}%>
    </body>
</html>
