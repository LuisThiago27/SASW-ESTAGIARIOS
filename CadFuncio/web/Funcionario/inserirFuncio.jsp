<%@page import="br.com.DAO.FuncioDAO"%>
<%@page import="br.com.DTO.FuncioDTO"%>
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
               
            FuncioDTO objFuncioDTO = new FuncioDTO();
            objFuncioDTO.setMatr(Integer.parseInt(request.getParameter("matr")));
            objFuncioDTO.setNome(request.getParameter("nome"));

            FuncioDAO objFuncioDAO = new FuncioDAO();
            objFuncioDAO.CadastrarFuncio(objFuncioDTO);
            
               } catch (Exception e) {
                   
               }


        %>    
        
        
    </body>
</html>


Nome_Guer, CodFil, Regional, Secao, CCusto, CodPonto, Dt_Admis, Cargo, CodCargo, Apresen, Situacao, Dt_Situac, Escala, Horario, GrpEscala, Funcao, Dt_FormIni, Dt_FormFim, LocalForm, Certific, Reg_PF, Local_PF, Reg_PFUF, Reg_PFDt, CarNacVig, DtValCNV, DtEmissaoCNV, CadastroAFIS, Reg_MT, Dt_Recicl, Dt_VenCurs, Dt_ExameMe, Dt_Psico, ExtensaoTV, ExtSegPes, ExtEscolta, ExtGrdEventos, ExtArmasNLetais, GrupoSang, Instrucao, Raca, EstCivil, Endereco, Numero, Complemento, Bairro, Cidade, UF, CEP, Fone1, Fone2, Email, Dt_Nasc, Sexo, Naturalid, Pai, Mae, Conjuge, CNH, Dt_VenCNH, UF_CNH, Categoria, RG, OrgEmis, RgDtEmis, CPF, PIS, Reservista, ReservCat, CTPS_Nro, CTPS_Serie, CTPS_UF, CTPS_Emis, TitEleit, TitEZona, TitSecao, Ct_Banco, Ct_Agencia, Ct_Conta, Ct_CodOper, Obs, Salario, Sindicato, CHMes, CHSeman, He_Periodo, DepIR, DepSF, FGTSOpcao, FGTSBanco, FGTSAg, PgCtSin, AssMedic, DepAssMed, CestaBas, ValeRef, ConvFarma, SegVida, TipoAdm, DefFis, DefFisTipo, DefFisDesc, Nacionalid, AnoCheg, FolhaLivro, PgINSS, PgIR, SEFIPOcor, Conta_Ctb, Altura, Peso, Dt_Demis, CodCidade, CodNaturalid, ExpGESP, Vinculo, FormaPgto, Jornada, SegDesemp, FPAdiant, CodAlimentacao, Chavebancaria, CodPessoaWeb, InterfExt, Cod_ExameCNH, Dt_ExameCNH,CNPJ_LabExame, UF_ExameCNH, CRM_ExamCNH, TrabParcial, Teletrabalho, TrabIntermitente, Operador, Dt_Alter, Hr_Alter            