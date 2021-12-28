<%@page import="br.com.DAO.PessoaDAO"%>
<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="br.com.DTO.PessoaDTO"%>
<%@page import ="br.com.DAO.PessoaDAO"%>
<%@page import ="java.sql.Connection"%>
<%@page import ="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTA PESSOAS</title>
    </head>
    <body>
        
        
        <%
            try {
                    
                PessoaDAO objPessoaDAO = new PessoaDAO();
                ArrayList<PessoaDTO>lista = objPessoaDAO.PesquisarPessoa();
                
                for(int num = 0 ; num < lista.size() ; num ++){
                out.print("<br> Codigo: "+ lista.get(num).getId_codigo() + "<br>");
                out.print("Nome: "+ lista.get(num).getnome()+ "<br>");
                
                out.print("<a href = 'FrmExcluirPessoas.jsp?id="
                + lista.get(num).getId_codigo()+ "&nome="
                + lista.get(num).getnome() + "'> Excluir  </a>");
   /*  -----------------------------------------------------------------------------------------   */
                out.print("<a href = 'FrmAlterarPessoas.jsp?id="
                + lista.get(num).getId_codigo()+ "&nome="
                + lista.get(num).getnome() + "'> Alterar </a>");
                    
        %><br><br><%
                }
             
                
                } catch (Exception e) {
                }
 
        %>
        
        <a href="index.html">Voltar</a>

        
    </body>
</html>
