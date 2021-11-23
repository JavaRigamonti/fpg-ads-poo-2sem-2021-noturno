<%-- 
    Document   : java
    Created on : 4 de out. de 2021, 17:40:12
    Author     : T-Gamer
--%>

<% 
    String alreadyAuth = (String) session.getAttribute("auth-user");
    int counterUsersIntern = 0;
    if(application.getAttribute("counter-users") != null){
        counterUsersIntern = (int) application.getAttribute("counter-users");
    }
    
  
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
       .div1{
           display: flex;
       }
    </style>
    </style>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <% if(alreadyAuth != null){ %>
            <h1>Javã Gabriel Rigamonti</h1>
            <p>RA:1290482013044</p>
            <p>Semestre de ingresso na Fatec: 1 semestre de 2020</p>
            <a href="https://github.com/JavaRigamonti" target="_blank">Github</a>
            
            <div class="div1">

                <table border="1" width="13%"><tbody><tr><td><p style="font-size:12pt; color:black;">Sigla: IBD002
                </p></td><td align="right"><p style="font-size:11pt; color:black;">AS:   4
                </p></td></tr><tr><td colspan="2">
                <p style="font-size:8pt; color:black;">Banco de Dados</p></td></tr>
                <tr><td colspan="2"> <p style="font-size:10pt; color:black;">Em Curso       
                <br> NF: <b> 3.3</b>&nbsp; FR: <b>  0.00</b>&nbsp; 
                PE: <b> 20212</b></p></td></tr></tbody></table>
                
                <table border="1" width="13%"><tbody><tr><td><p style="font-size:12pt; color:black;">Sigla: IES300
                </p></td><td align="right"><p style="font-size:11pt; color:black;">AS:   4
                </p></td></tr><tr><td colspan="2">
                <p style="font-size:8pt; color:black;">Engenharia de Software III</p></td></tr>
                <tr><td colspan="2"> <p style="font-size:10pt; color:black;">Em Curso       
                <br> NF: <b> 0.0</b>&nbsp; FR: <b>  0.00</b>&nbsp; 
                PE: <b> 20212</b></p></td></tr></tbody></table>
            </div>
            
            <div class="div1">

                <table border="1" width="13%"><tbody><tr><td><p style="font-size:12pt; color:black;">Sigla: ILP007
                </p></td><td align="right"><p style="font-size:11pt; color:black;">AS:   4
                </p></td></tr><tr><td colspan="2">
                <p style="font-size:8pt; color:black;">Programação Orientada e Objetos</p></td></tr>
                <tr><td colspan="2"> <p style="font-size:10pt; color:black;">Em Curso       
                <br> NF: <b> 0.0</b>&nbsp; FR: <b>  0.00</b>&nbsp; 
                PE: <b> 20212</b></p></td></tr></tbody></table>
                
                <table border="1" width="13%"><tbody><tr><td><p style="font-size:12pt; color:black;">Sigla: ILP512
                </p></td><td align="right"><p style="font-size:11pt; color:black;">AS:   4
                </p></td></tr><tr><td colspan="2">
                <p style="font-size:8pt; color:black;">Linguagem de Programação IV - INTERNET</p></td></tr>
                <tr><td colspan="2"> <p style="font-size:10pt; color:black;">Em Curso       
                <br> NF: <b> 0.0</b>&nbsp; FR: <b>  0.00</b>&nbsp; 
                PE: <b> 20212</b></p></td></tr></tbody></table>
            </div>
            
            <div class="div1">

                <table border="1" width="13%"><tbody><tr><td><p style="font-size:12pt; color:black;">Sigla: ISO200
                </p></td><td align="right"><p style="font-size:11pt; color:black;">AS:   4
                </p></td></tr><tr><td colspan="2">
                <p style="font-size:8pt; color:black;">Sistemas Operacionais II</p></td></tr>
                <tr><td colspan="2"> <p style="font-size:10pt; color:black;">Em Curso       
                <br> NF: <b> 0.0</b>&nbsp; FR: <b>  0.00</b>&nbsp; 
                PE: <b> 20212</b></p></td></tr></tbody></table>
                
                <table border="1" width="13%"><tbody><tr><td><p style="font-size:12pt; color:black;">Sigla: LIN500
                </p></td><td align="right"><p style="font-size:11pt; color:black;">AS:   4
                </p></td></tr><tr><td colspan="2">
                <p style="font-size:8pt; color:black;">Inglês V</p></td></tr>
                <tr><td colspan="2"> <p style="font-size:10pt; color:black;">Em Curso       
                <br> NF: <b> 0.0</b>&nbsp; FR: <b>  0.00</b>&nbsp; 
                PE: <b> 20212</b></p></td></tr></tbody></table>
            </div>
            <div class="div1">

                <table border="1" width="13%"><tbody><tr><td><p style="font-size:12pt; color:black;">Sigla: TTG003
                </p></td><td align="right"><p style="font-size:11pt; color:black;">AS:   4
                </p></td></tr><tr><td colspan="2">
                <p style="font-size:8pt; color:black;">Trabalho de Graduação I</p></td></tr>
                <tr><td colspan="2"> <p style="font-size:10pt; color:black;">Em Curso       
                <br> NF: <b> 0.0</b>&nbsp; FR: <b>  0.00</b>&nbsp; 
                PE: <b> 20212</b></p></td></tr></tbody></table>
             
            </div>
        <% } else { %>
            <h1>Você não tem permissão de visualizar o conteúdo.</h1>
        <% }  %>
    </body>
</html>
