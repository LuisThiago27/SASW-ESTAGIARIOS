
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ALTERAR PESSOAS</title>
    </head>
    <body>
         <form action ="alterar.jsp" method="POST">
             
            <label>Codigo: </label> <br>
            <input type="text" name ="id" 
                   value ="<%=request.getParameter("id")%>">
 
            <br>
            <label>Nome: </label> <br>
            <input type="text" name ="nome"
                   value ="<%=request.getParameter("nome")%>">
            <br>
            <label>Situaçao: </label> <br>
            <input type="text" name ="situacao"
                   value ="<%=request.getParameter("situacao")%>">
            <br>
            <label>Dt_Situac: </label> <br>
            <input type="text" name ="dt_Situac"
                   value ="<%=request.getParameter("dt_Situac")%>">
            <br>
            <label>Endereco: </label> <br>
            <input type="text" name ="endereco"
                   value ="<%=request.getParameter("endereco")%>">
            <br>
            <label>Numero: </label> <br>
            <input type="text" name ="numero"
                   value ="<%=request.getParameter("numero")%>">
            <br>
            <label>Bairro: </label> <br>
            <input type="text" name ="bairro"
                   value ="<%=request.getParameter("bairro")%>">
            <br>
            <label>Cidade: </label> <br>
            <input type="text" name ="cidade"
                   value ="<%=request.getParameter("cidade")%>">
            <br>
            <label>Complemento: </label> <br>
            <input type="text" name ="complemento"
                   value ="<%=request.getParameter("complemento")%>">
            
            
            <br><br>
            <button type ="submit">Alterar</button> 
            
            <a href="listaPessoas.jsp">Voltar</a>
        
        
        
        
    </form>
        
        
        
        
        
    </body>
</html>
