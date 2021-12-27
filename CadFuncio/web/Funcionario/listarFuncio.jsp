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
                    out.print("Nome_Guer: " + lista.get(num).getNome_Guer() + "<br>");
                    out.print("CodFil: " + lista.get(num).getCodFil() + "<br>");
                    out.print("Regional: " + lista.get(num).getRegional() + "<br>");
                    out.print("Secao: " + lista.get(num).getSecao() + "<br>");
                    out.print("CCusto: " + lista.get(num).getCCusto() + "<br>");
                    out.print("CodPonto: " + lista.get(num).getCodPonto() + "<br>");
                    out.print("Dt_Admis: " + lista.get(num).getDt_Admis() + "<br>");
                    out.print("Cargo: " + lista.get(num).getCargo() + "<br>");
                    out.print("CodCargo: " + lista.get(num).getCodCargo() + "<br>");
                    out.print("Apresen: " + lista.get(num).getApresen() + "<br>");
                    out.print("Situacao: " + lista.get(num).getSituacao() + "<br>");
                    out.print("Dt_Situac: " + lista.get(num).getDt_Situac() + "<br>");
                    out.print("Escala: " + lista.get(num).getEscala() + "<br>");
                    out.print("Horario: " + lista.get(num).getHorario() + "<br>");
                    out.print("GrpEscala: " + lista.get(num).getGrpEscala() + "<br>");
                    out.print("Funcao: " + lista.get(num).getFuncao() + "<br>");
                    out.print("Dt_FormIni: " + lista.get(num).getDt_FormIni() + "<br>");
                    out.print("Dt_FormFim: " + lista.get(num).getDt_FormFim() + "<br>");
                    out.print("LocalForm: " + lista.get(num).getLocalForm() + "<br>");
                    out.print("Certific: " + lista.get(num).getCertific() + "<br>");
                    out.print("Reg_PF: " + lista.get(num).getReg_PF() + "<br>");
                    out.print("Local_PF: " + lista.get(num).getLocal_PF() + "<br>");
                    out.print("Reg_PFUF: " + lista.get(num).getReg_PFUF() + "<br>");
                    out.print("Reg_PFDt: " + lista.get(num).getReg_PFDt() + "<br>");
                    out.print("CarNacVig: " + lista.get(num).getCarNacVig() + "<br>");
                    out.print("DtValCNV: " + lista.get(num).getDtValCNV() + "<br>");
                    out.print("DtEmissaoCNV: " + lista.get(num).getDtEmissaoCNV() + "<br>");
                    out.print("CadastroAFIS: " + lista.get(num).getCadastroAFIS() + "<br>");
                    out.print("Reg_MT: " + lista.get(num).getReg_MT() + "<br>");
                    out.print("Dt_Recicl: " + lista.get(num).getDt_Recicl() + "<br>");
                    out.print("Dt_VenCurs: " + lista.get(num).getDt_VenCurs() + "<br>");
                    out.print("Dt_ExameMe: " + lista.get(num).getDt_ExameMe() + "<br>");
                    out.print("Dt_Psico: " + lista.get(num).getDt_Psico() + "<br>");
                    out.print("ExtensaoTV: " + lista.get(num).getExtensaoTV() + "<br>");
                    out.print("ExtSegPes: " + lista.get(num).getExtSegPes() + "<br>");
                    out.print("ExtEscolta: " + lista.get(num).getExtEscolta() + "<br>");
                    out.print("ExtGrdEventos: " + lista.get(num).getExtGrdEventos() + "<br>");
                    out.print("ExtArmasNLetais: " + lista.get(num).getExtArmasNLetais() + "<br>");
                    out.print("GrupoSang: " + lista.get(num).getGrupoSang() + "<br>");
                    out.print("Instrucao: " + lista.get(num).getInstrucao() + "<br>");
                    out.print("Raca: " + lista.get(num).getRaca() + "<br>");
                    out.print("EstCivil: " + lista.get(num).getEstCivil() + "<br>");
                    out.print("Endereco: " + lista.get(num).getEndereco() + "<br>");
                    out.print("Numero: " + lista.get(num).getNumero() + "<br>");
                    out.print("Complemento: " + lista.get(num).getComplemento() + "<br>");
                    out.print("Bairro: " + lista.get(num).getBairro() + "<br>");
                    out.print("Cidade: " + lista.get(num).getCidade() + "<br>");
                    out.print("UF: " + lista.get(num).getUF() + "<br>");
                    out.print("CEP: " + lista.get(num).getCEP() + "<br>");
                    out.print("Fone1: " + lista.get(num).getFone1() + "<br>");
                    out.print("Fone2: " + lista.get(num).getFone2() + "<br>");
                    out.print("Email: " + lista.get(num).getEmail() + "<br>");
                    out.print("Dt_Nasc: " + lista.get(num).getDt_Nasc() + "<br>");
                    out.print("Sexo: " + lista.get(num).getSexo() + "<br>");
                    out.print("Naturalid: " + lista.get(num).getNaturalid() + "<br>");
                    out.print("Pai: " + lista.get(num).getPai() + "<br>");
                    out.print("Mae: " + lista.get(num).getMae() + "<br>");
                    out.print("Conjuge: " + lista.get(num).getConjuge() + "<br>");
                    out.print("CNH: " + lista.get(num).getCNH() + "<br>");
                    out.print("Dt_VenCNH: " + lista.get(num).getDt_VenCNH() + "<br>");
                    out.print("UF_CNH: " + lista.get(num).getUF_CNH() + "<br>");
                    out.print("Categoria: " + lista.get(num).getCategoria() + "<br>");
                    out.print("RG: " + lista.get(num).getRG() + "<br>");
                    out.print("OrgEmis: " + lista.get(num).getOrgEmis() + "<br>");
                    out.print("RgDtEmis: " + lista.get(num).getRgDtEmis() + "<br>");
                    out.print("CPF: " + lista.get(num).getCPF() + "<br>");
                    out.print("PIS: " + lista.get(num).getPIS() + "<br>");
                    out.print("Reservista: " + lista.get(num).getReservista() + "<br>");
                    out.print("ReservCat: " + lista.get(num).getReservCat() + "<br>");
                    out.print("CTPS_Nro: " + lista.get(num).getCTPS_Nro() + "<br>");
                    out.print("CTPS_Serie: " + lista.get(num).getCTPS_Serie() + "<br>");
                    out.print("CTPS_UF: " + lista.get(num).getCTPS_UF() + "<br>");
                    out.print("CTPS_Emis: " + lista.get(num).getCTPS_Emis() + "<br>");
                    out.print("TitEleit: " + lista.get(num).getTitEleit() + "<br>");
                    out.print("TitEZona: " + lista.get(num).getTitEZona() + "<br>");
                    out.print("TitSecao: " + lista.get(num).getTitSecao() + "<br>");
                    out.print("Ct_Banco: " + lista.get(num).getCt_Banco() + "<br>");
                    out.print("Ct_Agencia: " + lista.get(num).getCt_Agencia() + "<br>");
                    out.print("Ct_Conta: " + lista.get(num).getCt_Conta() + "<br>");
                    out.print("Ct_CodOper: " + lista.get(num).getCt_CodOper() + "<br>");
                    out.print("Obs: " + lista.get(num).getObs() + "<br>");
                    out.print("Salario: " + lista.get(num).getSalario() + "<br>");
                    out.print("Sindicato: " + lista.get(num).getSindicato() + "<br>");
                    out.print("CHMes: " + lista.get(num).getCHMes() + "<br>");
                    out.print("CHSeman: " + lista.get(num).getCHSeman() + "<br>");
                    out.print("He_Periodo: " + lista.get(num).getHe_Periodo() + "<br>");
                    out.print("DepIR: " + lista.get(num).getDepIR() + "<br>");
                    out.print("DepSF: " + lista.get(num).getDepSF() + "<br>");
                    out.print("FGTSOpcao: " + lista.get(num).getFGTSOpcao() + "<br>");
                    out.print("FGTSBanco: " + lista.get(num).getFGTSBanco() + "<br>");
                    out.print("FGTSAg: " + lista.get(num).getFGTSAg() + "<br>");
                    out.print("PgCtSin: " + lista.get(num).getPgCtSin() + "<br>");
                    out.print("AssMedic: " + lista.get(num).getAssMedic() + "<br>");
                    out.print("DepAssMed: " + lista.get(num).getDepAssMed() + "<br>");
                    out.print("CestaBas: " + lista.get(num).getCestaBas() + "<br>");
                    out.print("ValeRef: " + lista.get(num).getValeRef() + "<br>");
                    out.print("ConvFarma: " + lista.get(num).getConvFarma() + "<br>");
                    out.print("SegVida: " + lista.get(num).getSegVida() + "<br>");
                    out.print("TipoAdm: " + lista.get(num).getTipoAdm() + "<br>");
                    out.print("DefFis: " + lista.get(num).getDefFis() + "<br>");
                    out.print("DefFisTipo: " + lista.get(num).getDefFisTipo() + "<br>");
                    out.print("DefFiscDesc: " + lista.get(num).getDefFisDesc() + "<br>");
                    out.print("Nacionalid: " + lista.get(num).getNacionalid() + "<br>");
                    out.print("AnoCheg: " + lista.get(num).getAnoCheg() + "<br>");
                    out.print("FolhaLivro: " + lista.get(num).getFolhaLivro() + "<br>");
                    out.print("PgINSS: " + lista.get(num).getPgINSS() + "<br>");
                    out.print("PgIR: " + lista.get(num).getPgIR() + "<br>");
                    out.print("SEFIPOcor: " + lista.get(num).getSEFIPOcor() + "<br>");
                    out.print("Conta_Ctb: " + lista.get(num).getConta_Ctb() + "<br>");
                    out.print("Altura: " + lista.get(num).getAltura() + "<br>");
                    out.print("Peso: " + lista.get(num).getPeso() + "<br>");
                    out.print("Dt_Demis: " + lista.get(num).getDt_Demis() + "<br>");
                    out.print("CodCidade: " + lista.get(num).getCodCidade() + "<br>");
                    out.print("ExpGESP: " + lista.get(num).getExpGESP() + "<br>");
                    out.print("Vinculo: " + lista.get(num).getVinculo() + "<br>");
                    out.print("FormaPgto: " + lista.get(num).getFormaPgto() + "<br>");
                    out.print("Jornada: " + lista.get(num).getJornada() + "<br>");
                    out.print("SegDesemp: " + lista.get(num).getSegDesemp() + "<br>");
                    out.print("FPAdiant: " + lista.get(num).getFPAdiant() + "<br>");
                    out.print("CodAlimentacao: " + lista.get(num).getCodAlimentacao() + "<br>");
                    out.print("Chavebancaria: " + lista.get(num).getChavebancaria() + "<br>");
                    out.print("CodPessoaWeb: " + lista.get(num).getCodPessoaWeb() + "<br>");
                    out.print("InterfExt: " + lista.get(num).getInterfExt() + "<br>");
                    out.print("Cod_ExameCNH: " + lista.get(num).getCod_ExameCNH() + "<br>");
                    out.print("Dt_ExameCNH: " + lista.get(num).getDt_ExameCNH() + "<br>");
                    out.print("CNPJ_LabExame: " + lista.get(num).getCNPJ_LabExame() + "<br>");
                    out.print("UF_ExameCNH: " + lista.get(num).getUF_ExameCNH() + "<br>");
                    out.print("CRM_ExamCNH: " + lista.get(num).getCRM_ExamCNH() + "<br>");
                    out.print("TrabParcial: " + lista.get(num).getTrabParcial() + "<br>");
                    out.print("Teletrabalho: " + lista.get(num).getTeletrabalho() + "<br>");
                    out.print("TrabIntermitente: " + lista.get(num).getTrabIntermitente() + "<br>");
                    out.print("Operador: " + lista.get(num).getOperador() + "<br>");
                    out.print("Dt_Alter: " + lista.get(num).getDt_Alter() + "<br>");
                    out.print("Hr_Alter: " + lista.get(num).getHr_Alter() + "<br>");
                    
                       
                }
            
            
            } catch (Exception e) {
            }

        %>    



    </body>
</html>
