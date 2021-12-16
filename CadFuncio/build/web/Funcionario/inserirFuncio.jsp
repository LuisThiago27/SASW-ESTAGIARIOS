<%@page import="java.time.LocalDate"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.math.BigDecimal"%>
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
            objFuncioDTO.setNome_Guer(request.getParameter("nome_guer"));
            objFuncioDTO.setCodFil(Float.parseFloat(request.getParameter("codfil")));
            objFuncioDTO.setRegional(DecimalFormat.(request.getParameter("regional")));
            objFuncioDTO.setSecao(request.getParameter("secao"));
            objFuncioDTO.setCCusto(request.getParameter("ccusto"));
            objFuncioDTO.setCodPonto(request.getParameter("codponto"));
            objFuncioDTO.setDt_Admis(LocalDate.parse(request.getParameter("dt_admis")));
            objFuncioDTO.setCargo(request.getParameter("cargo"));
            objFuncioDTO.setCodCargo(Float.parseFloat(request.getParameter("codcargo")));
            objFuncioDTO.setApresen(request.getParameter("apresen"));
            objFuncioDTO.setSituacao(request.getParameter("situacao"));
            objFuncioDTO.setDt_Situac(LocalDate.parse(request.getParameter("dt_situac")));
            objFuncioDTO.setEscala(request.getParameter("escala"));
            objFuncioDTO.setHorario(BigDecimal(request.getParameter("horario")));
            objFuncioDTO.setGrpEscala(BigDecimal(request.getParameter("grpescala")));
            objFuncioDTO.setFuncao(request.getParameter("funcao"));
            objFuncioDTO.setDt_FormIni(LocalDate.parse(request.getParameter("dt_formini")));
            objFuncioDTO.setDt_FormFim(LocalDate.parse(request.getParameter("dt_formfim")));
            objFuncioDTO.setLocalForm(request.getParameter("localform"));
            objFuncioDTO.setCertific(request.getParameter("certific"));
            objFuncioDTO.setReg_PF(request.getParameter("setreg_pf"));
            objFuncioDTO.setLocal_PF(request.getParameter("local_pf"));
            objFuncioDTO.setReg_PFUF(request.getParameter("reg_pfuf"));
            objFuncioDTO.setReg_PFDt(LocalDate.parse(request.getParameter("reg_pfdt")));
            objFuncioDTO.setCarNacVig(request.getParameter("carnacvig"));
            objFuncioDTO.setDtValCNV(LocalDate.parse(request.getParameter("dtvalcnv")));
            objFuncioDTO.setDtEmissaoCNV(LocalDate.parse(request.getParameter("dtemissaocnv")));
            objFuncioDTO.setCadastroAFIS(request.getParameter("cadastroafis"));
            objFuncioDTO.setReg_MT(request.getParameter("reg_mt"));
            objFuncioDTO.setDt_Recicl(LocalDate.parse(request.getParameter("dt_recicl")));
            objFuncioDTO.setDt_VenCurs(LocalDate.parse(request.getParameter("dt_vencurs")));
            objFuncioDTO.setDt_ExameMe(LocalDate.parse(request.getParameter("dt_exameme")));
            objFuncioDTO.setDt_Psico(LocalDate.parse(request.getParameter("dt_psico")));
            objFuncioDTO.setExtensaoTV(request.getParameter("extensaotv"));
            objFuncioDTO.setExtSegPes(request.getParameter("extsegpes"));
            objFuncioDTO.setExtEscolta(request.getParameter("extescolta"));
            objFuncioDTO.setExtGrdEventos(request.getParameter("extgrdeventos"));
            objFuncioDTO.setExtArmasNLetais(request.getParameter("extarmasnletais"));
            objFuncioDTO.setGrupoSang(request.getParameter("gruposang"));
            objFuncioDTO.setInstrucao(request.getParameter("instrucao"));
            objFuncioDTO.setRaca(request.getParameter("raca"));
            objFuncioDTO.setEstCivil(request.getParameter("estcivil"));
            objFuncioDTO.setEndereco(request.getParameter("endereco"));
            objFuncioDTO.setNumero(request.getParameter("numero"));
            objFuncioDTO.setComplemento(request.getParameter("complemento"));
            objFuncioDTO.setBairro(request.getParameter("bairro"));
            objFuncioDTO.setCidade(request.getParameter("cidade"));
            objFuncioDTO.setUF(request.getParameter("uf"));
            objFuncioDTO.setCEP(request.getParameter("cep"));
            objFuncioDTO.setFone1(request.getParameter("fone1"));
            objFuncioDTO.setFone2(request.getParameter("fone2"));
            objFuncioDTO.setEmail(request.getParameter("email"));
            objFuncioDTO.setDt_Nasc(LocalDate.parse(request.getParameter("dt_nasc")));
            objFuncioDTO.setSexo(request.getParameter("sexo"));
            objFuncioDTO.setNaturalid(request.getParameter("naturalid"));
            objFuncioDTO.setPai(request.getParameter("pai"));
            objFuncioDTO.setMae(request.getParameter("mae"));
            objFuncioDTO.setConjuge(request.getParameter("conjuge"));
            objFuncioDTO.setCNH(request.getParameter("cnh"));
            objFuncioDTO.setDt_VenCNH(LocalDate.parse(request.getParameter("dt_vencnh")));
            objFuncioDTO.setUF_CNH(request.getParameter("uf_cnh"));
            objFuncioDTO.setCategoria(request.getParameter("categoria"));
            objFuncioDTO.setRG(request.getParameter("rg"));
            objFuncioDTO.setOrgEmis(request.getParameter("orgemis"));
            objFuncioDTO.setRgDtEmis(LocalDate.parse(request.getParameter("rgdtemis")));
            objFuncioDTO.setCPF(request.getParameter("cpf"));
            objFuncioDTO.setPIS(request.getParameter("pis"));
            objFuncioDTO.setReservista(request.getParameter("reservista"));
            objFuncioDTO.setReservCat(request.getParameter("reservcat"));
            objFuncioDTO.setCTPS_Nro(request.getParameter("ctps_nro"));
            objFuncioDTO.setCTPS_Serie(request.getParameter("ctps_serie"));
            objFuncioDTO.setCTPS_UF(request.getParameter("ctps_uf"));
            objFuncioDTO.setCTPS_Emis(LocalDate.parse(request.getParameter("ctps_emis")));
            objFuncioDTO.setTitEleit(request.getParameter("titeleit"));
            objFuncioDTO.setTitEZona(request.getParameter("titezona"));
            objFuncioDTO.setTitSecao(request.getParameter("titsecao"));
            objFuncioDTO.setCt_Banco(request.getParameter("ct_banco"));
            objFuncioDTO.setCt_Agencia(request.getParameter("ct_agencia"));
            objFuncioDTO.setCt_Conta(request.getParameter("ct_conta"));
            objFuncioDTO.setCt_CodOper(request.getParameter("ct_codoper"));
            objFuncioDTO.setObs(request.getParameter("obs"));
            objFuncioDTO.setSalario(Float.parseFloat(request.getParameter("salario")));
            objFuncioDTO.setSindicato(request.getParameter("sindicato"));
            objFuncioDTO.setCHMes(Float.parseFloat(request.getParameter("chmes")));
            objFuncioDTO.setCHSeman(Float.parseFloat(request.getParameter("chseman")));
            objFuncioDTO.setHe_Periodo(Float.parseFloat(request.getParameter("he_periodo")));
            objFuncioDTO.setDepIR(request.getParameter("depir"));
            objFuncioDTO.setDepSF(request.getParameter("depsf"));
            objFuncioDTO.setFGTSOpcao(LocalDate.parse(request.getParameter("fgtsopcao")));
            objFuncioDTO.setFGTSBanco(request.getParameter("fgtsbanco"));
            objFuncioDTO.setFGTSAg(request.getParameter("fgtsag"));
            objFuncioDTO.setPgCtSin(request.getParameter("pgctsin"));
            objFuncioDTO.setAssMedic(request.getParameter("assmedic"));
            objFuncioDTO.setDepAssMed(request.getParameter("depassmed"));
            objFuncioDTO.setCestaBas(request.getParameter("cestabas"));
            objFuncioDTO.setValeRef(request.getParameter("valeref"));
            objFuncioDTO.setConvFarma(request.getParameter("convfarma"));
            objFuncioDTO.setSegVida(request.getParameter("segvida"));
            objFuncioDTO.setTipoAdm(request.getParameter("tipoadm"));
            objFuncioDTO.setDefFis(request.getParameter("deffis"));
            
            
            
            
            
            
            
            
            

            FuncioDAO objFuncioDAO = new FuncioDAO();
            objFuncioDAO.CadastrarFuncio(objFuncioDTO);
            
               } catch (Exception e) {
                   
               }


        %>    
        
        
    </body>
</html>


Nome_Guer, CodFil, Regional, Secao, CCusto, CodPonto, Dt_Admis, Cargo, CodCargo, Apresen, Situacao, Dt_Situac, Escala, Horario, GrpEscala, Funcao, Dt_FormIni, Dt_FormFim, LocalForm, Certific, Reg_PF, Local_PF, Reg_PFUF, Reg_PFDt, CarNacVig, DtValCNV, DtEmissaoCNV, CadastroAFIS, Reg_MT, Dt_Recicl, Dt_VenCurs, Dt_ExameMe, Dt_Psico, ExtensaoTV, ExtSegPes, ExtEscolta, ExtGrdEventos, ExtArmasNLetais, GrupoSang, Instrucao, Raca, EstCivil, Endereco, Numero, Complemento, Bairro, Cidade, UF, CEP, Fone1, Fone2, Email, Dt_Nasc, Sexo, Naturalid, Pai, Mae, Conjuge, CNH, Dt_VenCNH, UF_CNH, Categoria, RG, OrgEmis, RgDtEmis, CPF, PIS, Reservista, ReservCat, CTPS_Nro, CTPS_Serie, CTPS_UF, CTPS_Emis, TitEleit, TitEZona, TitSecao, Ct_Banco, Ct_Agencia, Ct_Conta, Ct_CodOper, Obs, Salario, Sindicato, CHMes, CHSeman, He_Periodo, DepIR, DepSF, FGTSOpcao, FGTSBanco, FGTSAg, PgCtSin, AssMedic, DepAssMed, CestaBas, ValeRef, ConvFarma, SegVida, TipoAdm, DefFis, DefFisTipo, DefFisDesc, Nacionalid, AnoCheg, FolhaLivro, PgINSS, PgIR, SEFIPOcor, Conta_Ctb, Altura, Peso, Dt_Demis, CodCidade, CodNaturalid, ExpGESP, Vinculo, FormaPgto, Jornada, SegDesemp, FPAdiant, CodAlimentacao, Chavebancaria, CodPessoaWeb, InterfExt, Cod_ExameCNH, Dt_ExameCNH,CNPJ_LabExame, UF_ExameCNH, CRM_ExamCNH, TrabParcial, Teletrabalho, TrabIntermitente, Operador, Dt_Alter, Hr_Alter            