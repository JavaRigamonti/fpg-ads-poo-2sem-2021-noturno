<%-- 
    Document   : index
    Created on : 4 de out. de 2021, 17:40:35
    Author     : T-Gamer
--%>


<%
    int counterUsers = 0;
    String alreadyAuthHome = (String) session.getAttribute("auth-user");
    
    if(application.getAttribute("counter-users") != null){
        counterUsers = (int) application.getAttribute("counter-users");
    }
    
    ArrayList<String> usersIntern = new ArrayList<String>();
    
    if(alreadyAuthHome != null){
        for(int i = 1; i < counterUsers; i++){
           String user = (String.valueOf(application.getAttribute("user" + i)));
           
           if(user != null){
               usersIntern.add(user);
           }
       }
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Javã Rigamonti</title>
    </head>
   
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        
        <section>
            <div>
                <h4>Total de usuários ativos no momento: <%= counterUsers -1 %></h4>
                
            </div>
                
            <div>
                <h4>Usuário logados</h4>
                <div>
                    <% for(int i = 0; i < usersIntern.size(); i++){ %>
                        <div><%=  usersIntern.get(i) %></div>
                    <% } %>
                </div>
            </div>
            
        </section>
    </body>
</html>