<%@page import="java.sql.Date"%>
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
                objFuncioDTO.setRegional(Float.parseFloat(request.getParameter("regional")));
                objFuncioDTO.setSecao(request.getParameter("secao"));
                objFuncioDTO.setCCusto(request.getParameter("ccusto"));
                objFuncioDTO.setCodPonto(request.getParameter("codponto"));
                objFuncioDTO.setDt_Admis(Date.valueOf(request.getParameter("dt_admis")));
                objFuncioDTO.setCargo(request.getParameter("cargo"));
                objFuncioDTO.setCodCargo(Float.parseFloat(request.getParameter("codcargo")));
                objFuncioDTO.setApresen(request.getParameter("apresen"));
                objFuncioDTO.setSituacao(request.getParameter("situacao"));
                objFuncioDTO.setDt_Situac(Date.valueOf(request.getParameter("dt_situac")));
                objFuncioDTO.setEscala(request.getParameter("escala"));
                objFuncioDTO.setHorario(Float.parseFloat(request.getParameter("horario")));
                objFuncioDTO.setGrpEscala(Float.parseFloat(request.getParameter("grpescala")));
                objFuncioDTO.setFuncao(request.getParameter("funcao"));
                objFuncioDTO.setDt_FormIni(Date.valueOf(request.getParameter("dt_formini")));
                objFuncioDTO.setDt_FormFim(Date.valueOf(request.getParameter("dt_formfim")));
                objFuncioDTO.setLocalForm(request.getParameter("localform"));
                objFuncioDTO.setCertific(request.getParameter("certific"));
                objFuncioDTO.setReg_PF(request.getParameter("setreg_pf"));
                objFuncioDTO.setLocal_PF(request.getParameter("local_pf"));
                objFuncioDTO.setReg_PFUF(request.getParameter("reg_pfuf"));
                objFuncioDTO.setReg_PFDt(Date.valueOf(request.getParameter("reg_pfdt")));
                objFuncioDTO.setCarNacVig(request.getParameter("carnacvig"));
                objFuncioDTO.setDtValCNV(Date.valueOf(request.getParameter("dtvalcnv")));
                objFuncioDTO.setDtEmissaoCNV(Date.valueOf(request.getParameter("dtemissaocnv")));
                objFuncioDTO.setCadastroAFIS(request.getParameter("cadastroafis"));
                objFuncioDTO.setReg_MT(request.getParameter("reg_mt"));
                objFuncioDTO.setDt_Recicl(Date.valueOf(request.getParameter("dt_recicl")));
                objFuncioDTO.setDt_VenCurs(Date.valueOf(request.getParameter("dt_vencurs")));
                objFuncioDTO.setDt_ExameMe(Date.valueOf(request.getParameter("dt_exameme")));
                objFuncioDTO.setDt_Psico(Date.valueOf(request.getParameter("dt_psico")));
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
                objFuncioDTO.setDt_Nasc(Date.valueOf(request.getParameter("dt_nasc")));
                objFuncioDTO.setSexo(request.getParameter("sexo"));
                objFuncioDTO.setNaturalid(request.getParameter("naturalid"));
                objFuncioDTO.setPai(request.getParameter("pai"));
                objFuncioDTO.setMae(request.getParameter("mae"));
                objFuncioDTO.setConjuge(request.getParameter("conjuge"));
                objFuncioDTO.setCNH(request.getParameter("cnh"));
                objFuncioDTO.setDt_VenCNH(Date.valueOf(request.getParameter("dt_vencnh")));
                objFuncioDTO.setUF_CNH(request.getParameter("uf_cnh"));
                objFuncioDTO.setCategoria(request.getParameter("categoria"));
                objFuncioDTO.setRG(request.getParameter("rg"));
                objFuncioDTO.setOrgEmis(request.getParameter("orgemis"));
                objFuncioDTO.setRgDtEmis(Date.valueOf(request.getParameter("rgdtemis")));
                objFuncioDTO.setCPF(request.getParameter("cpf"));
                objFuncioDTO.setPIS(request.getParameter("pis"));
                objFuncioDTO.setReservista(request.getParameter("reservista"));
                objFuncioDTO.setReservCat(request.getParameter("reservcat"));
                objFuncioDTO.setCTPS_Nro(request.getParameter("ctps_nro"));
                objFuncioDTO.setCTPS_Serie(request.getParameter("ctps_serie"));
                objFuncioDTO.setCTPS_UF(request.getParameter("ctps_uf"));
                objFuncioDTO.setCTPS_Emis(Date.valueOf(request.getParameter("ctps_emis")));
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
                objFuncioDTO.setFGTSOpcao(Date.valueOf(request.getParameter("fgtsopcao")));
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
                objFuncioDTO.setDefFisTipo(request.getParameter("deffistipo"));
                objFuncioDTO.setDefFisDesc(request.getParameter("deffisdesc"));
                objFuncioDTO.setNacionalid(request.getParameter("nacionalid"));
                objFuncioDTO.setAnoCheg(request.getParameter("anocheg"));
                objFuncioDTO.setFolhaLivro(request.getParameter("folhalivro"));
                objFuncioDTO.setPgINSS(request.getParameter("pginss"));
                objFuncioDTO.setPgIR(request.getParameter("pgir"));
                objFuncioDTO.setSEFIPOcor(request.getParameter("sefipocor"));
                objFuncioDTO.setConta_Ctb(request.getParameter("conta_ctb"));
                objFuncioDTO.setAltura(Float.parseFloat(request.getParameter("altura")));
                objFuncioDTO.setPeso(Float.parseFloat(request.getParameter("peso")));
                objFuncioDTO.setDt_Demis(Date.valueOf(request.getParameter("dt_demis")));
                objFuncioDTO.setCodCidade(Float.parseFloat(request.getParameter("codcidade")));
                objFuncioDTO.setCodNaturalid(Float.parseFloat(request.getParameter("codnaturalid")));
                objFuncioDTO.setExpGESP(request.getParameter("expgesp"));
                objFuncioDTO.setVinculo(request.getParameter("vinculo"));
                objFuncioDTO.setFormaPgto(request.getParameter("formapgto"));
                objFuncioDTO.setJornada(Float.parseFloat(request.getParameter("jornada")));
                objFuncioDTO.setSegDesemp(request.getParameter("segdesemp"));
                objFuncioDTO.setFPAdiant(request.getParameter("fpadiant"));
                objFuncioDTO.setCodAlimentacao(request.getParameter("codalimentacao"));
                objFuncioDTO.setChavebancaria(request.getParameter("chavebancaria"));
                objFuncioDTO.setCodPessoaWeb(Float.parseFloat(request.getParameter("codpessoaweb")));
                objFuncioDTO.setInterfExt(request.getParameter("interfext"));
                objFuncioDTO.setCod_ExameCNH(request.getParameter("cod_examecnh"));
                objFuncioDTO.setDt_ExameCNH(Date.valueOf(request.getParameter("dt_examecnh")));
                objFuncioDTO.setCNPJ_LabExame(request.getParameter("cnpj_labexame"));
                objFuncioDTO.setUF_ExameCNH(request.getParameter("uf_examecnh"));
                objFuncioDTO.setCRM_ExamCNH(request.getParameter("crm_examcnh"));
                objFuncioDTO.setTrabParcial(request.getParameter("trabparcial"));
                objFuncioDTO.setTeletrabalho(request.getParameter("teletrabalho"));
                objFuncioDTO.setTrabIntermitente(request.getParameter("trabintermitente"));
                objFuncioDTO.setOperador(request.getParameter("operador"));
                objFuncioDTO.setDt_Alter(Date.valueOf(request.getParameter("dt_alter")));
                objFuncioDTO.setHr_Alter(request.getParameter("hr_alter"));

                FuncioDAO objFuncioDAO = new FuncioDAO();
                objFuncioDAO.CadastrarFuncio(objFuncioDTO);

            } catch (Exception e) {

            }

        %>    
        <label>Sei se deu certo não, olha lá o PhpMyAdmin :)</label>
    </body>
</html>