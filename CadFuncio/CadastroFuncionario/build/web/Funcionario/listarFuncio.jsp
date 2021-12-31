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
                            + "&reg_pfuf="+ lista.get(num).getReg_PFUF()
                            + "&reg_pfdt="+ lista.get(num).getReg_PFDt()
                            + "&carnacvig="+ lista.get(num).getCarNacVig()
                            + "&dtemissaocnv="+ lista.get(num).getDtEmissaoCNV()
                            + "&cadastroafis="+ lista.get(num).getCadastroAFIS()
                            + "&reg_mt="+ lista.get(num).getReg_MT()
                            + "&dt_recicl="+ lista.get(num).getDt_Recicl()
                            + "&dt_vencurs="+ lista.get(num).getDt_VenCurs()
                            + "&dt_exameme="+ lista.get(num).getDt_ExameMe()
                            + "&dt_psico="+ lista.get(num).getDt_Psico()
                            + "&extensaotv="+ lista.get(num).getExtensaoTV()
                            + "&extsegpes="+ lista.get(num).getExtSegPes()
                            + "&extgrdeventos="+ lista.get(num).getExtGrdEventos()
                            + "&extarmasnletais="+ lista.get(num).getExtArmasNLetais()
                            + "&gruposang="+ lista.get(num).getGrupoSang()
                            + "&instrucao="+ lista.get(num).getInstrucao()
                            + "&raca="+ lista.get(num).getRaca()
                            + "&estcivil="+ lista.get(num).getEstCivil()
                            + "&endereco="+ lista.get(num).getEndereco()
                            + "&numero="+ lista.get(num).getNumero()
                            + "&complemento="+ lista.get(num).getComplemento()
                            + "&bairro="+ lista.get(num).getBairro()
                            + "&cidade="+ lista.get(num).getCidade()
                            + "&uf="+ lista.get(num).getUF()
                            + "&cep="+ lista.get(num).getCEP()
                            + "&fone1="+ lista.get(num).getFone1()
                            + "&fone2="+ lista.get(num).getFone2()
                            + "&email="+ lista.get(num).getEmail()
                            + "&dt_nasc="+ lista.get(num).getDt_Nasc()
                            + "&sexo="+ lista.get(num).getSexo()
                            + "&naturalid="+ lista.get(num).getNaturalid()
                            + "&pai="+ lista.get(num).getPai()
                            + "&mae="+ lista.get(num).getMae()
                            + "&conjuge="+ lista.get(num).getConjuge()
                            + "&cnh="+ lista.get(num).getCNH()
                            + "&dt_vencnh="+ lista.get(num).getDt_VenCNH()
                            + "&uf_cnh="+ lista.get(num).getUF_CNH()
                            + "&categoria="+ lista.get(num).getCategoria()
                            + "&rg="+ lista.get(num).getRG()
                            + "&orgemis="+ lista.get(num).getOrgEmis()
                            + "&rgdtemis="+ lista.get(num).getRgDtEmis()
                            + "&cpf="+ lista.get(num).getCPF()
                            + "&pis="+ lista.get(num).getPIS()
                            + "&reservista="+ lista.get(num).getReservista()
                            + "&reservcat="+ lista.get(num).getReservCat()
                            + "&ctps_nro="+ lista.get(num).getCTPS_Nro()
                            + "&ctps_serie="+ lista.get(num).getCTPS_Serie()
                            + "&ctps_uf="+ lista.get(num).getCTPS_UF()
                            + "&ctps_emis="+ lista.get(num).getCTPS_Emis()
                            + "&titeleit="+ lista.get(num).getTitEleit()
                            + "&titezona="+ lista.get(num).getTitEZona()
                            + "&titsecao="+ lista.get(num).getTitSecao()
                            + "&ct_banco="+ lista.get(num).getCt_Banco()
                            + "&ct_agencia="+ lista.get(num).getCt_Agencia()
                            + "&ct_conta="+ lista.get(num).getCt_Conta()
                            + "&ct_codoper="+ lista.get(num).getCt_CodOper()
                            + "&obs="+ lista.get(num).getObs()
                            + "&salario="+ lista.get(num).getSalario()
                            + "&sindicato="+ lista.get(num).getSindicato()
                            + "&chmes="+ lista.get(num).getCHMes()
                            + "&chseman="+ lista.get(num).getCHSeman()
                            + "&he_periodo="+ lista.get(num).getHe_Periodo()
                            + "&depir="+ lista.get(num).getDepIR()
                            + "&depsf="+ lista.get(num).getDepSF()
                            + "&fgtsopcao="+ lista.get(num).getFGTSOpcao()
                            + "&fgtsbanco="+ lista.get(num).getFGTSBanco()
                            + "&fgtsag="+ lista.get(num).getFGTSAg()
                            + "&pgctsin="+ lista.get(num).getPgCtSin()
                            + "&assmedic="+ lista.get(num).getAssMedic()
                            + "&depassmed="+ lista.get(num).getDepAssMed()
                            + "&cestabas="+ lista.get(num).getCestaBas()
                            + "&valeref="+ lista.get(num).getValeRef()
                            + "&convfarma="+ lista.get(num).getConvFarma()
                            + "&segvida="+ lista.get(num).getSegVida()
                            + "&tipoadm="+ lista.get(num).getTipoAdm()
                            + "&deffis="+ lista.get(num).getDefFis()
                            + "&deffistipo="+ lista.get(num).getDefFisTipo()
                            + "&deffisdesc="+ lista.get(num).getDefFisDesc()
                            + "&nacionalid="+ lista.get(num).getNacionalid()
                            + "&anocheg="+ lista.get(num).getAnoCheg()
                            + "&folhalivro="+ lista.get(num).getFolhaLivro()
                            + "&pginss="+ lista.get(num).getPgINSS()
                            + "&sefipocor="+ lista.get(num).getSEFIPOcor()
                            + "&conta_ctb="+ lista.get(num).getConta_Ctb()
                            + "&altura="+ lista.get(num).getAltura()
                            + "&peso="+ lista.get(num).getPeso()
                            + "&dt_demis="+ lista.get(num).getDt_Demis()
                            + "&codcidade="+ lista.get(num).getCodCidade()
                            + "&codnaturalid="+ lista.get(num).getCodNaturalid()
                            + "&expgesp="+ lista.get(num).getExpGESP()
                            + "&vinculo="+ lista.get(num).getVinculo()
                            + "&formapgto="+ lista.get(num).getFormaPgto()
                            + "&jornada="+ lista.get(num).getJornada()
                            + "&segdesemp="+ lista.get(num).getSegDesemp()
                            + "&fpadiant="+ lista.get(num).getFPAdiant()
                            + "&codalimentacao="+ lista.get(num).getCodAlimentacao()
                            + "&chavebancaria="+ lista.get(num).getChavebancaria()
                            + "&codpessoaweb="+ lista.get(num).getCodPessoaWeb()
                            + "&interfext="+ lista.get(num).getInterfExt()
                            + "&cod_examecnh="+ lista.get(num).getCod_ExameCNH()
                            + "&dt_examecnh="+ lista.get(num).getDt_ExameCNH()
                            + "&cnpj_labexame="+ lista.get(num).getCNPJ_LabExame()
                            + "&uf_examecnh="+ lista.get(num).getUF_ExameCNH()
                            + "&crm_examcnh="+ lista.get(num).getCRM_ExamCNH()
                            + "&trabparcial="+ lista.get(num).getTrabParcial()
                            + "&teletrabalho="+ lista.get(num).getTeletrabalho()
                            + "&trabintermitente="+ lista.get(num).getTrabIntermitente()
                            + "&operador="+ lista.get(num).getOperador()
                            + "&dt_alter="+ lista.get(num).getDt_Alter()
                            + "&hr_alter="+ lista.get(num).getHr_Alter()
                            + "' \" class='btn btn-primary' > Detalhes </button>"%>
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
        <br> <button onclick="location.href= '../index.html'" class="btn btn-primary"> Voltar </button>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
