<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="java.sql.Date"%>
<%@page import="br.com.DTO.PessoaDTO"%>
<%@page import ="br.com.DAO.PessoaDAO"%>
<%@page import ="java.sql.Connection"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Pessoas</title>
    </head>

        <%
           try {
                   
                   PessoaDTO objPessoaDTO = new PessoaDTO();
                 
                   objPessoaDTO.setnome(request.getParameter("nome"));
                   objPessoaDTO.setSituacao(request.getParameter("situacao"));
                   objPessoaDTO.setDt_Situac(request.getParameter("dt_Situac"));
                   objPessoaDTO.setEndereco(request.getParameter("endereco"));
                   objPessoaDTO.setNumero(request.getParameter("numero"));
                   objPessoaDTO.setBairro(request.getParameter("bairro"));
                   objPessoaDTO.setCidade(request.getParameter("cidade"));
                   objPessoaDTO.setComplemento(request.getParameter("complemento"));
                   objPessoaDTO.setCodCidade(Float.parseFloat(request.getParameter("codcidade")));
                   objPessoaDTO.setUF(request.getParameter("uf"));
                   objPessoaDTO.setCEP(request.getParameter("cep"));
                   objPessoaDTO.setFone1(request.getParameter("fone1"));
                   objPessoaDTO.setFone2(request.getParameter("fone2"));
                   objPessoaDTO.setEmail(request.getParameter("email"));
                   objPessoaDTO.setRegiao(request.getParameter("regiao"));
                   objPessoaDTO.setEstCivil(request.getParameter("estcivil"));
                   objPessoaDTO.setConjuge(request.getParameter("conjuge"));
                   objPessoaDTO.setPai(request.getParameter("pai"));
                   objPessoaDTO.setMae(request.getParameter("mae"));
                   objPessoaDTO.setRG(request.getParameter("rg"));
                   objPessoaDTO.setRGOrgEmis(request.getParameter("rgorgemis"));
                   objPessoaDTO.setRgDtEmis(request.getParameter("rgdtemis"));
                   objPessoaDTO.setCPF(request.getParameter("cpf"));
                   objPessoaDTO.setTitEleit(request.getParameter("titeleit"));
                   objPessoaDTO.setTitZona(request.getParameter("titzona"));
                   objPessoaDTO.setTitSecao(request.getParameter("titsecao"));
                   objPessoaDTO.setPIS(request.getParameter("pis"));
                   objPessoaDTO.setCNH(request.getParameter("cnh"));
                   objPessoaDTO.setCNHDtVenc(request.getParameter("cnhdtvenc"));
                   objPessoaDTO.setCNHCat(request.getParameter("cnhcat"));
                   objPessoaDTO.setReservista(request.getParameter("reservista"));
                   objPessoaDTO.setReservCat(request.getParameter("reservcat"));
                   objPessoaDTO.setCTPS_Nro(request.getParameter("ctps_nro"));
                   objPessoaDTO.setCTPS_Serie(request.getParameter("ctps_serie"));
                   objPessoaDTO.setCTPS_UF(request.getParameter("ctps_uf"));
                   objPessoaDTO.setCTPS_Emis(request.getParameter("ctps_emis"));
                   objPessoaDTO.setDt_nasc(request.getParameter("dt_nasc"));
                   objPessoaDTO.setNaturalid(request.getParameter("naturalid"));
                   objPessoaDTO.setInstrucao(Float.parseFloat(request.getParameter("instrucao")));
                   objPessoaDTO.setSexo(request.getParameter("sexo"));
                   objPessoaDTO.setRaca(request.getParameter("raca"));
                   objPessoaDTO.setGrupoSang(request.getParameter("gruposang"));
                   objPessoaDTO.setAltura(Float.parseFloat(request.getParameter("altura")));
                   objPessoaDTO.setPeso(Float.parseFloat(request.getParameter("peso")));
                   objPessoaDTO.setIndicacao(request.getParameter("indicacao"));
                   objPessoaDTO.setDt_FormIni(request.getParameter("dt_formini"));
                   objPessoaDTO.setDt_FormFim(request.getParameter("setdt_formfim"));
                   objPessoaDTO.setLocalForm(request.getParameter("localform"));
                   objPessoaDTO.setCertific(request.getParameter("certific"));
                   objPessoaDTO.setReg_PF(request.getParameter("reg_pf"));
                   objPessoaDTO.setReg_PFUF(request.getParameter("reg_pfuf"));
                   objPessoaDTO.setReg_PFDt(request.getParameter("reg_pfdt"));
                   objPessoaDTO.setCarNacVig(request.getParameter("carnacvig"));
                   objPessoaDTO.setDtValCNV(request.getParameter("dtvalcnv"));
                   objPessoaDTO.setDtEmissaoCNV(request.getParameter("dtemissaocnv"));
                   objPessoaDTO.setCadastroAFIS(request.getParameter("cadastroafis"));
                   objPessoaDTO.setReg_DRT(request.getParameter("ref_drt"));
                   objPessoaDTO.setDt_Recicl(request.getParameter("dt_recicl"));
                   objPessoaDTO.setDt_VenCurs(request.getParameter("dr_vencurs"));
                   objPessoaDTO.setDt_ExameMe(request.getParameter("dt_exameme"));
                   objPessoaDTO.setDt_Psico(request.getParameter("dr_psico"));
                   objPessoaDTO.setExtTV(request.getParameter("setexttv"));
                   objPessoaDTO.setExtSPP(request.getParameter("extspp"));
                   objPessoaDTO.setExtEscolta(request.getParameter("extescolta"));
                   objPessoaDTO.setExtGrdEventos(request.getParameter("extgrdeventos"));
                   objPessoaDTO.setExtArmasNLetais(request.getParameter("extarmasnletais"));
                   objPessoaDTO.setObs(request.getParameter("obs"));
                   objPessoaDTO.setFuncao(request.getParameter("funcao"));
                   objPessoaDTO.setMatr (Float.parseFloat (request.getParameter("matr")));
                   objPessoaDTO.setDig01(Float.parseFloat(request.getParameter("dig01")));
                   objPessoaDTO.setDig02(Float.parseFloat(request.getParameter("dig02")));
                   objPessoaDTO.setDig03(Float.parseFloat(request.getParameter("dig03")));
                   objPessoaDTO.setDig04(Float.parseFloat(request.getParameter("dig04")));
                   objPessoaDTO.setDig05(Float.parseFloat(request.getParameter("dig05")));
                   objPessoaDTO.setDig06(Float.parseFloat(request.getParameter("dig06")));
                   objPessoaDTO.setDig07(Float.parseFloat(request.getParameter("dig07")));
                   objPessoaDTO.setDig08(Float.parseFloat(request.getParameter("dig08")));
                   objPessoaDTO.setDig09(Float.parseFloat(request.getParameter("dig09")));
                   objPessoaDTO.setDig10(Float.parseFloat(request.getParameter("dig10")));
                   objPessoaDTO.setPW(request.getParameter("pw"));
                   objPessoaDTO.setBottom(request.getParameter("bottom"));
                   objPessoaDTO.setBottomII(request.getParameter("bottomii"));
                   objPessoaDTO.setCodPrest(Float.parseFloat(request.getParameter("codprest")));
                   objPessoaDTO.setCodVisit(Float.parseFloat(request.getParameter("codvisit")));
                   objPessoaDTO.setPretSalario(Float.parseFloat(request.getParameter("pretsalario")));
                   objPessoaDTO.setApresen(request.getParameter("apresen"));
                   objPessoaDTO.setCt_Banco(request.getParameter("ct_banco"));
                   objPessoaDTO.setCt_Agencia(request.getParameter("ct_agencia"));
                   objPessoaDTO.setCt_Conta(request.getParameter("ct_conta"));
                   objPessoaDTO.setRegional(Float.parseFloat(request.getParameter("regional")));
                   objPessoaDTO.setPWWeb(request.getParameter("pwweb"));
                   objPessoaDTO.setCargoPretend(request.getParameter("cargopretend"));
                   objPessoaDTO.setSecaoPretend(request.getParameter("secaopretend"));
                   objPessoaDTO.setEscalaPretend(request.getParameter("escalapretend"));
                   objPessoaDTO.setHorarioPretend(Float.parseFloat(request.getParameter("horariopretend")));
                   objPessoaDTO.setSindicatoPdr(request.getParameter("sindicatopdr"));
                   objPessoaDTO.setCodFilPretend(Float.parseFloat(request.getParameter("codfilpretend")));
                   objPessoaDTO.setPWPortal(request.getParameter("pwportal"));
                   objPessoaDTO.setPwTickets(request.getParameter("pwtickets"));
                   objPessoaDTO.setDt_UltAcPortal(request.getParameter("dt_ultacportal"));
                   objPessoaDTO.setCodSatellite(Float.parseFloat(request.getParameter("codsatellite")));
                   objPessoaDTO.setCodPessoaWEB(Float.parseFloat(request.getParameter("codpessoaweb")));
                   objPessoaDTO.setCodAlimentacao(request.getParameter("codalimentacao"));
                   objPessoaDTO.setChavebancaria(request.getParameter("chavebancaria"));
                   objPessoaDTO.setSecao(request.getParameter("secao"));
                   objPessoaDTO.setCodFilPST(Float.parseFloat(request.getParameter("codfilpst")));
                   objPessoaDTO.setCodCli(request.getParameter("codcli"));
                   objPessoaDTO.setEnvPontoWhp(Float.parseFloat(request.getParameter("envpontowhp")));
                   objPessoaDTO.setEnvPontoEmail(Float.parseFloat(request.getParameter("envpontoemail")));
                   objPessoaDTO.setOperador(request.getParameter("operador"));
                   objPessoaDTO.setDt_Alter(request.getParameter("dt_alter"));
                   objPessoaDTO.setHr_Alter(request.getParameter("hr_alter"));
          
                   PessoaDAO objPessoaDAO = new PessoaDAO();
                   objPessoaDAO.CadastrarPessoa(objPessoaDTO);
     

               } catch (Exception e) {
                   
                  
               }
    
        %>   
        <form>Cadastrado com Sucesso!!!</form>
        <a href="index.html">Voltar</a>
    
</html>