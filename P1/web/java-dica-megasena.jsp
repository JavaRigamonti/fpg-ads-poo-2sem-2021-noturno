<%-- 
    Document   : java-dica-megasena
    Created on : 4 de out. de 2021, 17:40:27
    Author     : T-Gamer
--%>

<% 
    String alreadyAuth = (String) session.getAttribute("auth-user");
    int numbers[] = new int[6];
    
    if(alreadyAuth != null){
        for(int i = 0; i <= 5; i++){
           numbers[i] = Integer.parseInt((String.valueOf(session.getAttribute("number" + i))));
       }
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        
        <% if(alreadyAuth != null){ %>
            <table border="1">
                <tr>
                    <th>Números da sorte</th>
                                
                </tr>
                    <% for(int i = 0; i <= 5; i++){ %>
                <tr>
                    <td><%=  numbers[i] %></td>
                          
                </tr>
            <%}%>
        </table>
        <hr/>
        
         
        <% } else { %>
            <h1>Você não tem permissão de visualizar o conteúdo.</h1>
        <% }  %>
    </body>
</html>