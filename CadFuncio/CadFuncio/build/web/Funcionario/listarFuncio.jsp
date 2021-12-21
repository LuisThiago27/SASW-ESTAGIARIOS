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
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
            
            
            } catch (Exception e) {
            }

        %>    



    </body>
</html>
