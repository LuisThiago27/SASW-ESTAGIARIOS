<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXCLUIR PESSOAS</title>
    </head>
    <body>
        <form action ="excluir.jsp" method ="POST">
           
            <label>Codigo: </label> <br>
            <input type="text" name ="id" 
                   value ="<%=request.getParameter("id")%>">
            
            
            <br>
            <label>Nome: </label> <br>
            <input type="text" name ="nome"
                   value ="<%=request.getParameter("nome")%>">
            
            
            <br><br>
            <button type ="submit">Excluir</button> 
            
            <a href="listaPessoas.jsp">Voltar</a>
        </form>
        
    </body>
</html>
