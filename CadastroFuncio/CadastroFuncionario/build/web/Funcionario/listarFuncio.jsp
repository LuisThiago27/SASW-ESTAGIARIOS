<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DTO.FuncioDTO"%>
<%@page import="br.com.DAO.FuncioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Consulta</title>
    </head>
    <body>
        
        <table class="table table-striped" align="center" border="1px" width="80%">
            <tr>
                <th>Matrícula</th>
                <th>Nome</th>
                <th>Nome_Guer</th>
                <th>CodFil</th>
                <th>Regional</th>
                <th> </th>
            </tr>

        <%
            try {

                FuncioDAO objFuncioDAO = new FuncioDAO();
                ArrayList<FuncioDTO> lista = objFuncioDAO.PesquisarFuncio();

                for (int num = 0; num < lista.size(); num++) {
        %>
        <tr>
                    <td><%= lista.get(num).getMatr()%></td>
                    <td><%= lista.get(num).getNome()%></td>
                    <td><%= lista.get(num).getNome_Guer()%></td>
                    <td><%= lista.get(num).getCodFil()%></td>
                    <td><%= lista.get(num).getRegional()%></td>
                    <td><%= "<button onclick = \"location.href= 'FrmAlterarFuncio.jsp?"
                            + "matr="+ lista.get(num).getMatr() 
                            + "&nome="+ lista.get(num).getNome()
                            + "&nome_guer="+ lista.get(num).getNome_Guer()
                            + "&codfil="+ lista.get(num).getCodFil() 
                            + "&regional="+ lista.get(num).getRegional()
                            + "&secao="+ lista.get(num).getSecao()
                            + "&ccusto="+ lista.get(num).getCCusto()
                            + "&codponto="+ lista.get(num).getCodPonto()
                            + "&dt_admis="+ lista.get(num).getDt_Admis()
                            + "&cargo="+ lista.get(num).getCargo()
                            + "&codcargo="+ lista.get(num).getCodCargo()
                            + "&apresen="+ lista.get(num).getApresen()
                            + "&situacao="+ lista.get(num).getSituacao()
                            + "&dt_situac="+ lista.get(num).getDt_Situac()
                            + "&escala="+ lista.get(num).getEscala()
                            + "&horario="+ lista.get(num).getHorario()
                            + "&grpescala="+ lista.get(num).getGrpEscala()
                            + "&funcao="+ lista.get(num).getFuncao()
                            + "&dt_formini="+ lista.get(num).getDt_FormIni()
                            + "&dt_formfim="+ lista.get(num).getDt_FormFim()
                            + "&localform="+ lista.get(num).getLocalForm()
                            + "&certific="+ lista.get(num).getCertific()
                            + "&reg_pf="+ lista.get(num).getReg_PF()
                            + "&local_pf="+ lista.get(num).getLocal_PF()
                            + "&email="+ lista.get(num).getEmail()
                            /*+ "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()
                            + "matr="+ lista.get(num).getMatr()*/
                      
                            
                            
                            + "' \" class='btn btn-primary' >Alterar </button>"%>
                    </td>                                                       
        </tr>
        <%
                }

            } catch (Exception e) {
                FileWriter log = new FileWriter("C:\\temp\\log.txt");
                PrintWriter gravarArq = new PrintWriter(log);
                gravarArq.printf("Teste");
                System.out.println("Teste");
                log.close();
            }

        %> 
        
        </table>
        <br> <button type="submit" class="btn btn-primary"> Clique aqui para voltar para o menu </button>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
