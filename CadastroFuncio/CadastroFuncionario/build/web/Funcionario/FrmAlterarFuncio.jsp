<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DTO.FuncioDTO"%>
<%@page import="br.com.DAO.FuncioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Funcionários</title>
        <link rel="stylesheet" href="style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body>

        <form action="alterarFuncio.jsp" method="POST">



            <div class="row">

                <div class="col-3">
                    <br><label>Matrícula do Funcionário: </label> <br>
                    <input type="text" name="matr" class="form-control"
                           value="<%=request.getParameter("matr")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Nome do Funcionário: </label> <br>
                    <input type="text" name="nome" class="form-control"
                           value="<%=request.getParameter("nome")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Nome Guer: </label> <br>
                    <input type="text" name="nome_guer" class="form-control"
                           value="<%=request.getParameter("nome_guer")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Código Filial: </label> <br>
                    <input type="text" name="codfil" class="form-control"
                           value="<%=request.getParameter("codfil")%>">
                </div>

                <div class="col-3">
                    <br> <label>Regional: </label> <br>
                    <input type="text" name="regional" class="form-control"
                           value="<%=request.getParameter("regional")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Seção: </label> <br>
                    <input type="text" name="secao" class="form-control"
                           value="<%=request.getParameter("secao")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>C Custo: </label> <br>
                    <input type="text" name="ccusto" class="form-control"
                           value="<%=request.getParameter("ccusto")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Código ponto: </label> <br>
                    <input type="text" name="codponto" class="form-control"
                           value="<%=request.getParameter("codponto")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data Admissão: </label> <br>
                    <input type="text" name="dt_admis" class="form-control"
                           value="<%=request.getParameter("dt_admis")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Cargo: </label> <br>
                    <input type="text" name="cargo" class="form-control"
                           value="<%=request.getParameter("cargo")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Código Cargo: </label> <br>
                    <input type="text" name="codcargo" class="form-control"
                           value="<%=request.getParameter("codcargo")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Apresentação: </label> <br>
                    <input type="text" name="apresen" class="form-control"
                           value="<%=request.getParameter("apresen")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Situação: </label> <br>
                    <input type="text" name="situacao" class="form-control"
                           value="<%=request.getParameter("situacao")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data situação: </label> <br>
                    <input type="text" name="dt_situac" class="form-control"
                           value="<%=request.getParameter("dt_situac")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Escala: </label> <br>
                    <input type="text" name="escala" class="form-control"
                           value="<%=request.getParameter("escala")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Horário: </label> <br>
                    <input type="text" name="horario" class="form-control"
                           value="<%=request.getParameter("horario")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Grp Escala: </label> <br>
                    <input type="text" name="grpescala" class="form-control"
                           value="<%=request.getParameter("grpescala")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Função: </label> <br>
                    <input type="text" name="funcao" class="form-control"
                           value="<%=request.getParameter("funcao")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data Form Ini: </label> <br>
                    <input type="text" name="dt_formini" class="form-control"
                           value="<%=request.getParameter("dt_formini")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data Form Fim: </label> <br>
                    <input type="text" name="dt_formfim" class="form-control"
                           value="<%=request.getParameter("dt_formfim")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Local Form: </label> <br>
                    <input type="text" name="localform" class="form-control"
                           value="<%=request.getParameter("localform")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Certificado: </label> <br>
                    <input type="text" name="certific" class="form-control"
                           value="<%=request.getParameter("certific")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Reg PF: </label> <br>
                    <input type="text" name="reg_pf" class="form-control"
                           value="<%=request.getParameter("reg_pf")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Local PF: </label> <br>
                    <input type="text" name="local_pf" class="form-control"
                           value="<%=request.getParameter("local_pf")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Reg PFUF: </label> <br>
                    <input type="text" name="reg_pfuf" class="form-control"
                           value="<%=request.getParameter("reg_pfuf")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Reg PFDT: </label> <br>
                    <input type="text" name="reg_pfdt" class="form-control"
                           value="<%=request.getParameter("reg_pfdt")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Car Nac Vig: </label> <br>
                    <input type="text" name="carnacvig" class="form-control"
                           value="<%=request.getParameter("carnacvig")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data Val Cnv: </label> <br>
                    <input type="text" name="dtvalcnv" class="form-control"
                           value="<%=request.getParameter("dtvalcnv")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data Emissão Cnv: </label> <br>
                    <input type="text" name="dtemissaocnv" class="form-control"
                           value="<%=request.getParameter("dtemissaocnv")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Cadastro AFIS: </label> <br>
                    <input type="text" name="cadastroafis" class="form-control"
                           value="<%=request.getParameter("cadastroafis")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Reg MT: </label> <br>
                    <input type="text" name="reg_mt" class="form-control"
                           value="<%=request.getParameter("reg_mt")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data Recicl: </label> <br>
                    <input type="text" name="dt_recicl" class="form-control"
                           value="<%=request.getParameter("dt_recicl")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data Vencurs: </label> <br>
                    <input type="text" name="dt_vencurs" class="form-control"
                           value="<%=request.getParameter("dt_vencurs")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data Exame me: </label> <br>
                    <input type="text" name="dt_exameme" class="form-control"
                           value="<%=request.getParameter("dt_exameme")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data Psico: </label> <br>
                    <input type="text" name="dt_psico" class="form-control"
                           value="<%=request.getParameter("dt_psico")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Extensão TV: </label> <br>
                    <input type="text" name="extensaotv" class="form-control"
                           value="<%=request.getParameter("extensaotv")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Ext Seg Pes: </label> <br>
                    <input type="text" name="extsegpes" class="form-control"
                           value="<%=request.getParameter("extsegpes")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Ext Escolta: </label> <br>
                    <input type="text" name="extescolta" class="form-control"
                           value="<%=request.getParameter("extescolta")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Ext Grd Eventos: </label> <br>
                    <input type="text" name="extgrdeventos" class="form-control"
                           value="<%=request.getParameter("extgrdeventos")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Ext Armas não letais: </label> <br>
                    <input type="text" name="extarmasnletais" class="form-control"
                           value="<%=request.getParameter("extarmasnletais")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Grupo Sang: </label> <br>
                    <input type="text" name="gruposang" class="form-control"
                           value="<%=request.getParameter("gruposang")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Instrução: </label> <br>
                    <input type="text" name="instrucao" class="form-control"
                           value="<%=request.getParameter("instrucao")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Raça: </label> <br>
                    <input type="text" name="raca" class="form-control"
                           value="<%=request.getParameter("raca")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Estado Civil: </label> <br>
                    <input type="text" name="estcivil" class="form-control"
                           value="<%=request.getParameter("estcivil")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Endereço: </label> <br>
                    <input type="text" name="endereco" class="form-control"
                           value="<%=request.getParameter("endereco")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Número: </label> <br>
                    <input type="text" name="numero" class="form-control"
                           value="<%=request.getParameter("numero")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Complemento: </label> <br>
                    <input type="text" name="complemento" class="form-control"
                           value="<%=request.getParameter("complemento")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Bairro: </label> <br>
                    <input type="text" name="bairro" class="form-control"
                           value="<%=request.getParameter("bairro")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Cidade: </label> <br>
                    <input type="text" name="cidade" class="form-control"
                           value="<%=request.getParameter("cidade")%>">
                </div>

                <div class="col-3"> 
                    <br><label>UF: </label>
                    <select name="uf" class="form-control">
                        <option value="">Selecione</option>
                        <option value="AC">AC</option>
                        <option value="AL">AL</option>
                        <option value="AM">AM</option>
                        <option value="AP">AP</option>
                        <option value="BA">BA</option>
                        <option value="CE">CE</option>
                        <option value="DF">DF</option>
                        <option value="ES">ES</option>
                        <option value="GO">GO</option>
                        <option value="MA">MA</option>
                        <option value="MG">MG</option>
                        <option value="MS">MS</option>
                        <option value="MT">MT</option>
                        <option value="PA">PA</option>
                        <option value="PB">PB</option>
                        <option value="PE">PE</option>
                        <option value="PI">PI</option>
                        <option value="PR">PR</option>
                        <option value="RJ">RJ</option>
                        <option value="RN">RN</option>
                        <option value="RS">RS</option>
                        <option value="RO">RO</option>
                        <option value="RR">RR</option>
                        <option value="SC">SC</option>
                        <option value="SE">SE</option>
                        <option value="SP">SP</option>
                        <option value="TO">TO</option>
                    </select>
                </div>

                <div class="col-3"> 
                    <br> <label>CEP: </label> <br>
                    <input type="text" maxlength="8" name="cep" class="form-control"
                           value="<%=request.getParameter("cep")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Telefone: </label> <br>
                    <input type="text" maxlength="10" name="fone1" class="form-control"
                           value="<%=request.getParameter("fone1")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Celular: </label> <br>
                    <input type="text" maxlength="11" name="fone2" class="form-control"
                           value="<%=request.getParameter("fone2")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Email: </label> <br>
                    <input type="email" name="email" class="form-control"
                           value="<%=request.getParameter("email")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data de nascimento: </label> <br>
                    <input type="text" name="dt_nasc" class="form-control"
                           value="<%=request.getParameter("dt_nasc")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Sexo: </label> <br>
                    <input type="text" name="sexo" class="form-control"
                           value="<%=request.getParameter("sexo")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Naturalidade: </label> <br>
                    <input type="text" name="naturalid" class="form-control"
                           value="<%=request.getParameter("naturalid")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Pai: </label> <br>
                    <input type="text" name="pai" class="form-control"
                           value="<%=request.getParameter("pai")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Mãe: </label> <br>
                    <input type="text" name="mae" class="form-control"
                           value="<%=request.getParameter("mae")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Conjuge: </label> <br>
                    <input type="text" name="conjuge" class="form-control"
                           value="<%=request.getParameter("conjuge")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>CNH: </label> <br>
                    <input type="text" name="cnh" class="form-control"
                           value="<%=request.getParameter("cnh")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data de vencimento CNH: </label> <br>
                    <input type="text" name="dt_vencnh" class="form-control"
                           value="<%=request.getParameter("dt_vencnh")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>UF da CNH: </label> <br>
                    <input type="text" name="uf_cnh" class="form-control"
                           value="<%=request.getParameter("uf_cnh")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Categoria CNH: </label> <br>
                    <input type="text" name="categoria" class="form-control"
                           value="<%=request.getParameter("categoria")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>RG: </label> <br>
                    <input type="text" maxlength="8" name="rg" class="form-control"
                           value="<%=request.getParameter("rg")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Orgão Emissor: </label> <br>
                    <input type="text" name="orgemis" class="form-control"
                           value="<%=request.getParameter("orgemis")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data de emissão RG: </label> <br>
                    <input type="text" name="rgdtemis" class="form-control"
                           value="<%=request.getParameter("rgdtemis")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>CPF: </label> <br>
                    <input type="text" maxlength="11" name="cpf" class="form-control"
                           value="<%=request.getParameter("cpf")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>PIS: </label> <br>
                    <input type="text" name="pis" class="form-control"
                           value="<%=request.getParameter("pis")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Reservista: </label> <br>
                    <input type="text" name="reservista" class="form-control"
                           value="<%=request.getParameter("reservista")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Reservista categoria: </label> <br>
                    <input type="text" name="reservcat" class="form-control"
                           value="<%=request.getParameter("reservcat")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Número CTPS: </label> <br>
                    <input type="text" name="ctps_nro" class="form-control"
                           value="<%=request.getParameter("ctps_nro")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Série CTPS: </label> <br>
                    <input type="text" name="ctps_serie" class="form-control"
                           value="<%=request.getParameter("ctps_serie")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>UF CTPS: </label> <br>
                    <input type="text" name="ctps_uf" class="form-control"
                           value="<%=request.getParameter("ctps_uf")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data emissão CTPS: </label> <br>
                    <input type="text" name="ctps_emis" class="form-control"
                           value="<%=request.getParameter("ctps_emis")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Título de eleitor: </label> <br>
                    <input type="text" name="titeleit" class="form-control"
                           value="<%=request.getParameter("titeleit")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Zona: </label> <br>
                    <input type="text" name="titezona" class="form-control"
                           value="<%=request.getParameter("titezona")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Seção: </label> <br>
                    <input type="text" name="titsecao" class="form-control"
                           value="<%=request.getParameter("titsecao")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Ct banco: </label> <br>
                    <input type="text" name="ct_banco" class="form-control"
                           value="<%=request.getParameter("ct_banco")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Ct agência: </label> <br>
                    <input type="text" name="ct_agencia" class="form-control"
                           value="<%=request.getParameter("ct_agencia")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Ct conta: </label> <br>
                    <input type="text" name="ct_conta" class="form-control"
                           value="<%=request.getParameter("ct_conta")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Ct código oper: </label> <br>
                    <input type="text" name="ct_codoper" class="form-control"
                           value="<%=request.getParameter("ct_codoper")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Obs: </label> <br>
                    <input type="text" name="obs" class="form-control"
                           value="<%=request.getParameter("obs")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Salário: </label> <br>
                    <input type="text" name="salario" class="form-control"
                           value="<%=request.getParameter("salario")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Sindicato: </label> <br>
                    <input type="text" name="sindicato" class="form-control"
                           value="<%=request.getParameter("sindicato")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>CH mês: </label> <br>
                    <input type="text" name="chmes" class="form-control"
                           value="<%=request.getParameter("chmes")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>CH semana: </label> <br>
                    <input type="text" name="chseman" class="form-control"
                           value="<%=request.getParameter("chseman")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>HE período: </label> <br>
                    <input type="text" name="he_periodo" class="form-control"
                           value="<%=request.getParameter("he_periodo")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Dep IR: </label> <br>
                    <input type="text" name="depir" class="form-control"
                           value="<%=request.getParameter("depir")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Dep SF: </label> <br>
                    <input type="text" name="depsf" class="form-control"
                           value="<%=request.getParameter("depsf")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Opção FGTS: </label> <br>
                    <input type="text" name="fgtsopcao" class="form-control"
                           value="<%=request.getParameter("fgtsopcao")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Banco FGTS: </label> <br>
                    <input type="text" name="fgtsbanco" class="form-control"
                           value="<%=request.getParameter("fgtsbanco")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Agência FGTS: </label> <br>
                    <input type="text" name="fgtsag" class="form-control"
                           value="<%=request.getParameter("fgtsag")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Pg Ct Sin: </label> <br>
                    <input type="text" name="pgctsin" class="form-control"
                           value="<%=request.getParameter("pgctsin")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Ass Médico: </label> <br>
                    <input type="text" name="assmedic" class="form-control"
                           value="<%=request.getParameter("assmedic")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Dep Ass Médico: </label> <br>
                    <input type="text" name="depassmed" class="form-control"
                           value="<%=request.getParameter("depassmed")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Cesta básica: </label> <br>
                    <input type="text" name="cestabas" class="form-control"
                           value="<%=request.getParameter("cestabas")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Vale refeição: </label> <br>
                    <input type="text" name="valeref" class="form-control"
                           value="<%=request.getParameter("valeref")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Convênio Farma: </label> <br>
                    <input type="text" name="convfarma" class="form-control"
                           value="<%=request.getParameter("convfarma")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Seguro de vida: </label> <br>
                    <input type="text" name="segvida" class="form-control"
                           value="<%=request.getParameter("segvida")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Tipo Adm: </label> <br>
                    <input type="text" name="tipoadm" class="form-control"
                           value="<%=request.getParameter("tipoadm")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Def Fis: </label> <br>
                    <input type="text" name="deffis" class="form-control"
                           value="<%=request.getParameter("deffis")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Def Fis Tipo: </label> <br>
                    <input type="text" name="deffistipo" class="form-control"
                           value="<%=request.getParameter("deffistipo")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Def Fis Descrição: </label> <br>
                    <input type="text" name="deffisdesc" class="form-control"
                           value="<%=request.getParameter("deffisdesc")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Nacionalidade: </label> <br>
                    <input type="text" name="nacionalid" class="form-control"
                           value="<%=request.getParameter("nacionalid")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Ano de chegada: </label> <br>
                    <input type="text" name="anocheg" class="form-control"
                           value="<%=request.getParameter("anocheg")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Folha livro: </label> <br>
                    <input type="text" name="folhalivro" class="form-control"
                           value="<%=request.getParameter("folhalivro")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Pg INSS: </label> <br>
                    <input type="text" name="pginss" class="form-control"
                           value="<%=request.getParameter("pginss")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Pg IR: </label> <br>
                    <input type="text" name="pgir" class="form-control"
                           value="<%=request.getParameter("pgir")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>SEFIPO cor: </label> <br>
                    <input type="text" name="sefipocor" class="form-control"
                           value="<%=request.getParameter("sefipocor")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Conta ctb: </label> <br>
                    <input type="text" name="conta_ctb" class="form-control"
                           value="<%=request.getParameter("conta_ctb")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Altura: </label> <br>
                    <input type="text" maxlength="3" name="altura" class="form-control"
                           value="<%=request.getParameter("altura")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Peso: </label> <br>
                    <input type="text" maxlength="3" name="peso" class="form-control"
                           value="<%=request.getParameter("peso")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data demissão: </label> <br>
                    <input type="text" name="dt_demis" class="form-control"
                           value="<%=request.getParameter("dt_demis")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Código Cidade: </label> <br>
                    <input type="text" name="codcidade" class="form-control"
                           value="<%=request.getParameter("codcidade")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Código naturalidade: </label> <br>
                    <input type="text" name="codnaturalid" class="form-control"
                           value="<%=request.getParameter("codnaturalid")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Exp Gesp: </label> <br>
                    <input type="text" name="expgesp" class="form-control"
                           value="<%=request.getParameter("expgesp")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Vínculo: </label> <br>
                    <input type="text" name="vinculo" class="form-control"
                           value="<%=request.getParameter("vinculo")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Forma de pagamento: </label> <br>
                    <input type="text" name="formapgto" class="form-control"
                           value="<%=request.getParameter("formapgto")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Jornada de trabalho: </label> <br>
                    <input type="text" name="jornada" class="form-control"
                           value="<%=request.getParameter("jornada")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Seg desemp: </label> <br>
                    <input type="text" name="segdesemp" class="form-control"
                           value="<%=request.getParameter("segdesemp")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>FP adiantado: </label> <br>
                    <input type="text" name="fpadiant" class="form-control"
                           value="<%=request.getParameter("fpadiant")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Código Alimentação: </label> <br>
                    <input type="text" name="codalimentacao" class="form-control"
                           value="<%=request.getParameter("codalimentacao")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Chave bancária: </label> <br>
                    <input type="text" name="chavebancaria" class="form-control"
                           value="<%=request.getParameter("chavebancaria")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Código pessoa web: </label> <br>
                    <input type="text" name="codpessoaweb" class="form-control"
                           value="<%=request.getParameter("codpessoaweb")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Interf Ext: </label> <br>
                    <input type="text" name="interfext" class="form-control"
                           value="<%=request.getParameter("interfext")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Código exame CNH: </label> <br>
                    <input type="text" name="cod_examecnh" class="form-control"
                           value="<%=request.getParameter("cod_examecnh")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data exame CNH: </label> <br>
                    <input type="text" name="dt_examecnh" class="form-control"
                           value="<%=request.getParameter("dt_examecnh")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>CNPJ lab exame: </label> <br>
                    <input type="text" maxlength="14" name="cnpj_labexame" class="form-control"
                           value="<%=request.getParameter("cnpj_labexame")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>UF exame CNH: </label> <br>
                    <input type="text" name="uf_examecnh" class="form-control"
                           value="<%=request.getParameter("uf_examecnh")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>CRM exame CNH: </label> <br>
                    <input type="text" name="crm_examcnh" class="form-control"
                           value="<%=request.getParameter("crm_examcnh")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Trab Parcial: </label> <br>
                    <input type="text" name="trabparcial" class="form-control"
                           value="<%=request.getParameter("trabparcial")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Teletrabalho: </label> <br>
                    <input type="text" name="teletrabalho" class="form-control"
                           value="<%=request.getParameter("teletrabalho")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Trabalho intermitente: </label> <br>
                    <input type="text" name="trabintermitente" class="form-control"
                           value="<%=request.getParameter("trabintermitente")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Operador: </label> <br>
                    <input type="text" name="operador" class="form-control"
                           value="<%=request.getParameter("operador")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Data alteração: </label> <br>
                    <input type="text" name="dt_alter" class="form-control"
                           value="<%=request.getParameter("dt_alter")%>">
                </div>

                <div class="col-3"> 
                    <br> <label>Hora alteração: </label> <br>
                    <input type="text" name="hr_alter" class="form-control"
                           value="<%=request.getParameter("hr_alter")%>">
                </div>

            </div>

                
            <button type="submit" id="botao">Alterar</button>
        </form>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>