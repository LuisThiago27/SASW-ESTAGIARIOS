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
                    objPessoaDTO.setSituacao(request.getParameter("situacao"));
                    objPessoaDTO.setDt_Situac(request.getParameter("dt_Situac"));
                    objPessoaDTO.setEndereco(request.getParameter("endereco"));
                    objPessoaDTO.setNumero(request.getParameter("numero"));
                    objPessoaDTO.setBairro(request.getParameter("bairro"));
                    objPessoaDTO.setCidade(request.getParameter("cidade"));
                    objPessoaDTO.setComplemento(request.getParameter("complemento"));
                    
                   
                    PessoaDAO objPessoaDAO = new PessoaDAO();
                    objPessoaDAO.AlterarPessoa(objPessoaDTO);
                   } catch (Exception e) 
               
               {
                  
               }
    
        %>     
        <form>Alterado com Sucesso!!!</form>
        <a href="listaPessoas.jsp">Voltar</a>
    </body>
</html>