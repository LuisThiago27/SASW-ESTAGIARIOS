<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DTO.FuncioDTO"%>
<%@page import="br.com.DAO.FuncioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

            try {
            
                FuncioDAO objFuncioDAO = new FuncioDAO();
                ArrayList<FuncioDTO> lista = objFuncioDAO.PesquisarFuncio();
                
                for (int num = 0; num < lista.size() ; num++){
                    out.print("Matrícula: " + lista.get(num).getMatr() + "<br>");
                    out.print("Nome: " + lista.get(num).getNome() + "<br>");
            
                }
            
            
            } catch (Exception e) {
            }

        %>    



    </body>
</html>
