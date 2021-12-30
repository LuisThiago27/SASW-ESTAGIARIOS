<%@page import="br.com.DAO.PessoaDAO"%>
<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="br.com.DTO.PessoaDTO"%>
<%@page import ="br.com.DAO.PessoaDAO"%>
<%@page import ="java.sql.Connection"%>
<%@page import ="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>CONSULTA</title>
    <div class ="tituloListaPessoas"><strong>LISTA DE PESSOAS</strong></div>
    </head>
    <body class="listapessoas">
        
        
        <%
            try {
                
                
                    
                PessoaDAO objPessoaDAO = new PessoaDAO();
                ArrayList<PessoaDTO>lista = objPessoaDAO.PesquisarPessoa();
                
               
                for(int num = 0 ; num < lista.size() ; num ++){
                out.print("<form class = 'indexjsp'>");
                out.print("<div class = 'row'>");
                
                out.print("<div class = 'col-1'>");
                out.print("Codigo <br><br>"+ lista.get(num).getId_codigo());
                out.print("</div>");
                
                
                
                out.print("<div class = 'col-1'>");
                out.print("Nome <br><br>"+ lista.get(num).getnome());
                out.print("</div>");
                
                out.print("<div class = 'col-1'>");
                out.print("Situação <br><br>"+ lista.get(num).getSituacao());
                out.print("</div>");
                
                out.print("<div class = 'col-1'>");
                out.print("Dt_Situac <br><br>"+ lista.get(num).getDt_Situac());
                out.print("</div>");
                
                out.print("<div class = 'col-1'>");
                out.print("Endereço <br><br>"+ lista.get(num).getEndereco());
                out.print("</div>");
                
                out.print("<div class = 'col-1'>");
                out.print("Bairro <br><br>"+ lista.get(num).getBairro());
                out.print("</div>");
                
                out.print("<div class = 'col-1'>");
                out.print("Cidade <br><br>"+ lista.get(num).getCidade());
                out.print("</div>");
                
                out.print("<div class = 'col-1'>");
                out.print("Complemento <br><br>"+ lista.get(num).getComplemento());
                out.print("</div>");
                out.print("</div>");
                
                out.print("<button type ='submit' class='buttonlistapessoa'>");
                out.print("<a href = 'FrmExcluirPessoas.jsp?id="    
                + lista.get(num).getId_codigo()+ "&nome="
                + lista.get(num).getnome() + "'> EXCLUIR </a> ");
                out.print("</button>");
               
                
   /*  -----------------------------------------------------------------------------------------   */
                out.print("<button type ='submit' class='buttonlistapessoa'>");
                out.print("<a href = 'FrmAlterarPessoas.jsp?id="
                + lista.get(num).getId_codigo()+ "&nome="
                + lista.get(num).getnome()+ "&situacao="         
                + lista.get(num).getSituacao()+ "&dt_Situac="
                + lista.get(num).getDt_Situac()+ "&endereco="
                + lista.get(num).getEndereco()+ "&numero="
                + lista.get(num).getNumero()+ "&bairro="
                + lista.get(num).getBairro()+ "&cidade="       
                + lista.get(num).getCidade()+ "&complemento="       
                + lista.get(num).getComplemento()+ "'> ALTERAR </a>");
                out.print("</button>");
                
                
                out.print("</div>");
                out.print("</form>");
                    
        %><br><br><%
                }
             
                
                } catch (Exception e) {
                }
 
        %>
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <a href="index.html">Voltar</a>

        
    </body>

