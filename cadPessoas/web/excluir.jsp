<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="java.sql.Date"%>
<%@page import="br.com.DTO.PessoaDTO"%>
<%@page import ="br.com.DAO.PessoaDAO"%>
<%@page import ="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <body>
        
        <%
           try {
        
                    PessoaDTO objPessoaDTO = new PessoaDTO();
                 
                    objPessoaDTO.setId_codigo(Integer.parseInt(request.getParameter("id")));
                    objPessoaDTO.setNome(request.getParameter("nome"));
                   
                    PessoaDAO objPessoaDAO = new PessoaDAO();
                    objPessoaDAO.ExcluirPessoa(objPessoaDTO);
                   } catch (Exception e) 
               
               {
                  
               }
    
        %>     
        <form>Excluido com Sucesso!!!</form>
        <a href="listaPessoas.jsp">Voltar</a>
    </body>
</html>
