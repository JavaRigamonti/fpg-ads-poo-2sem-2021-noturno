<%@page import="web.Task"%>
<%@page import="java.sql.Connection"%>
<%@page import="web.JavaDbListener"%>
<%@page import="db.Tasks"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   String userIsLogged = (String) session.getAttribute("auth-user");
   ArrayList<Task> taskList = new ArrayList();
   
        if (request.getParameter("auth-login") != null) {
            String username = request.getParameter("auth-username");
            session.setAttribute("auth-user", username);
            response.sendRedirect(request.getRequestURI());
        }else if (request.getParameter("auth-logout") != null){
            session.removeAttribute("auth-user");
            response.sendRedirect(request.getRequestURI());
        }
    if(userIsLogged != null){
        if (request.getParameter("new-task") != null) {
            String taskName = request.getParameter("taskName");
            Tasks.addTask(taskName, userIsLogged);
            response.sendRedirect(request.getRequestURI());
        }
        if (request.getParameter("remove") != null) {
            Integer taskId = Integer.parseInt(request.getParameter("taskId"));
            Tasks.removeTask(taskId);
            response.sendRedirect(request.getRequestURI());
        }
        taskList = Tasks.getTasks(userIsLogged);
    
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP - Javã Rigamonti</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
      


        <% if (userIsLogged != null) { %>
        <form action="index.jsp" method="post">
        <input type="text" name="taskName" />
        <input type="submit" name="new-task" value="Nova Tarefa" />
    </form>
        
        <table>
            <% for (Task task : taskList) {%>
            <tr>
                <td><%= task.id %> - </td>
                <td><%= task.title %></td>
                <td>
                     <form action="index.jsp" method="post">
                        <input type="hidden" name="taskId" value="<%= task.id %>" />
                        <input type="submit" name="remove" value="-" />
                    </form>                    
                </td>
            </tr>
            <% } %>
            </table>
        <%} else {%>
            <p>Realize o login para visualizar ou cadastrar novas tarefas.</p>
            <% } %>
             
      </body>
</html>