package br.com.DAO;

import br.com.DTO.FuncioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class FuncioDAO {
    
    Connection con;
    PreparedStatement pstm;
    
    public void CadastrarFuncio(FuncioDTO objFuncioDTO) throws ClassNotFoundException{
        
        String sql = "insert into tb_funcionario (Matr, Nome, Nome_Guer, CodFil, Regional, Secao, CCusto, CodPonto,"
                + " Dt_Admis, Cargo, CodCargo, Apresen, Situacao,"
                + " Dt_Situac, Escala, Horario, GrpEscala, Funcao, Dt_FormIni, Dt_FormFim, LocalForm,"
                + " Certific, Reg_PF, Local_PF, Reg_PFUF, Reg_PFDt, CarNacVig, DtValCNV, DtEmissaoCNV, CadastroAFIS, Reg_MT, Dt_Recicl,"
                + " Dt_VenCurs, Dt_ExameMe, Dt_Psico, ExtensaoTV, ExtSegPes, ExtEscolta, ExtGrdEventos,"
                + " ExtArmasNLetais, GrupoSang, Instrucao, Raca, EstCivil, Endereco, Numero,"
                + " Complemento, Bairro, Cidade, UF, CEP, Fone1, Fone2, Email, Dt_Nasc, Sexo, Naturalid,"
                + " Pai, Mae, Conjuge, CNH, Dt_VenCNH, UF_CNH, Categoria, RG, OrgEmis, RgDtEmis, CPF, PIS,"
                + " Reservista, ReservCat, CTPS_Nro, CTPS_Serie, CTPS_UF, CTPS_Emis, TitEleit, TitEZona, TitSecao,"
                + " Ct_Banco, Ct_Agencia, Ct_Conta, Ct_CodOper, Obs, Salario, Sindicato, CHMes, CHSeman, He_Periodo,"
                + " DepIR, DepSF, FGTSOpcao, FGTSBanco, FGTSAg, PgCtSin, AssMedic, DepAssMed, CestaBas, ValeRef,"
                + " ConvFarma, SegVida, TipoAdm, DefFis, DefFisTipo, DefFisDesc, Nacionalid, AnoCheg, FolhaLivro,"
                + " PgINSS, PgIR, SEFIPOcor, Conta_Ctb, Altura, Peso, Dt_Demis, CodCidade, CodNaturalid, ExpGESP,"
                + " Vinculo, FormaPgto, Jornada, SegDesemp, FPAdiant, CodAlimentacao, Chavebancaria, CodPessoaWeb,"
                + " InterfExt, Cod_ExameCNH, Dt_ExameCNH,CNPJ_LabExame, UF_ExameCNH, CRM_ExamCNH, TrabParcial, Teletrabalho,"
                + " TrabIntermitente, Operador, Dt_Alter, Hr_Alter) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                + " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                + " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                + " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                + " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, )";
        
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setFloat(1, objFuncioDTO.getMatr());
            pstm.setString(2, objFuncioDTO.getNome());
            pstm.setString(3, objFuncioDTO.getNome_Guer());
            pstm.setFloat(4, objFuncioDTO.getCodFil());
            pstm.setFloat(5, objFuncioDTO.getRegional());
            pstm.setString(6, objFuncioDTO.getSecao());
            pstm.setString(7, objFuncioDTO.getCCusto());
            pstm.setString(8, objFuncioDTO.getCodPonto());
            pstm.setDate(9, objFuncioDTO.getDt_Admis());
            pstm.setString(10, objFuncioDTO.getCargo());
            pstm.setFloat(11, objFuncioDTO.getCodCargo());
            pstm.setString(12, objFuncioDTO.getApresen());
            pstm.setString(13, objFuncioDTO.getSituacao());
            pstm.setDate(14, objFuncioDTO.getDt_Situac());
            pstm.setString(15, objFuncioDTO.getEscala());
            pstm.setFloat(16, objFuncioDTO.getHorario());
            pstm.setFloat(17, objFuncioDTO.getGrpEscala());
            pstm.setString(18, objFuncioDTO.getFuncao());
            pstm.setDate(19, objFuncioDTO.getDt_FormIni());
            pstm.setDate(20, objFuncioDTO.getDt_FormFim());
            pstm.setString(21, objFuncioDTO.getLocalForm());
            pstm.setString(22, objFuncioDTO.getCertific());
            pstm.setString(23, objFuncioDTO.getReg_PF());
            pstm.setString(24, objFuncioDTO.getLocal_PF());
            pstm.setString(25, objFuncioDTO.getReg_PFUF());
            pstm.setDate(26, objFuncioDTO.getReg_PFDt());
            pstm.setString(27, objFuncioDTO.getCarNacVig());
            pstm.setDate(28, objFuncioDTO.getDtValCNV());
            pstm.setDate(29, objFuncioDTO.getDtEmissaoCNV());
            pstm.setString(30, objFuncioDTO.getCadastroAFIS());
            pstm.setString(31, objFuncioDTO.getReg_MT());
            pstm.setDate(32, objFuncioDTO.getDt_Recicl());
            pstm.setDate(33, objFuncioDTO.getDt_VenCurs());
            pstm.setDate(34, objFuncioDTO.getDt_ExameMe());
            pstm.setDate(35, objFuncioDTO.getDt_Psico());
            pstm.setString(36, objFuncioDTO.getExtensaoTV());
            pstm.setString(37, objFuncioDTO.getExtSegPes());
            pstm.setString(38, objFuncioDTO.getExtEscolta());
            pstm.setString(39, objFuncioDTO.getExtGrdEventos());
            pstm.setString(40, objFuncioDTO.getExtArmasNLetais());
            pstm.setString(41, objFuncioDTO.getGrupoSang());
            pstm.setString(42, objFuncioDTO.getInstrucao());
            pstm.setString(43, objFuncioDTO.getRaca());
            pstm.setString(45, objFuncioDTO.getEstCivil());
            pstm.setString(46, objFuncioDTO.getEndereco());
            pstm.setString(47, objFuncioDTO.getNumero());
            pstm.setString(48, objFuncioDTO.getComplemento());
            pstm.setString(49, objFuncioDTO.getBairro());
            pstm.setString(50, objFuncioDTO.getCidade());
            pstm.setString(51, objFuncioDTO.getUF());
            pstm.setString(52, objFuncioDTO.getCEP());
            pstm.setString(53, objFuncioDTO.getFone1());
            pstm.setString(54, objFuncioDTO.getFone2());
            pstm.setString(55, objFuncioDTO.getEmail());
            pstm.setDate(56, objFuncioDTO.getDt_Nasc());
            pstm.setString(57, objFuncioDTO.getSexo());
            pstm.setString(58, objFuncioDTO.getNaturalid());
            pstm.setString(59, objFuncioDTO.getPai());
            pstm.setString(60, objFuncioDTO.getMae());
            pstm.setString(61, objFuncioDTO.getConjuge());
            pstm.setString(62, objFuncioDTO.getCNH());
            pstm.setDate(63, objFuncioDTO.getDt_VenCNH());
            pstm.setString(64, objFuncioDTO.getUF_CNH());
            pstm.setString(65, objFuncioDTO.getCategoria());
            pstm.setString(66, objFuncioDTO.getRG());
            pstm.setString(67, objFuncioDTO.getOrgEmis());
            pstm.setDate(68, objFuncioDTO.getRgDtEmis());
            pstm.setString(69, objFuncioDTO.getCPF());
            pstm.setString(70, objFuncioDTO.getPIS());
            pstm.setString(71, objFuncioDTO.getReservista());
            pstm.setString(72, objFuncioDTO.getReservCat());
            pstm.setString(73, objFuncioDTO.getCTPS_Nro());
            pstm.setString(74, objFuncioDTO.getCTPS_Serie());
            pstm.setString(75, objFuncioDTO.getCTPS_UF());
            pstm.setDate(76, objFuncioDTO.getCTPS_Emis());
            pstm.setString(77, objFuncioDTO.getTitEleit());
            pstm.setString(78, objFuncioDTO.getTitEZona());
            pstm.setString(79, objFuncioDTO.getTitSecao());
            pstm.setString(80, objFuncioDTO.getCt_Banco());
            pstm.setString(81, objFuncioDTO.getCt_Agencia());
            pstm.setString(82, objFuncioDTO.getCt_Conta());
            pstm.setString(83, objFuncioDTO.getCt_CodOper());
            pstm.setString(84, objFuncioDTO.getObs());
            pstm.setFloat(85, objFuncioDTO.getSalario());
            pstm.setString(86, objFuncioDTO.getSindicato());
            pstm.setFloat(87, objFuncioDTO.getCHMes());
            pstm.setFloat(88, objFuncioDTO.getCHSeman());
            pstm.setFloat(89, objFuncioDTO.getHe_Periodo());
            pstm.setString(90, objFuncioDTO.getDepIR());
            pstm.setString(91, objFuncioDTO.getDepSF());
            pstm.setDate(92, objFuncioDTO.getFGTSOpcao());
            pstm.setString(93, objFuncioDTO.getFGTSBanco());
            pstm.setString(94, objFuncioDTO.getFGTSAg());
            pstm.setString(95, objFuncioDTO.getPgCtSin());
            pstm.setString(96, objFuncioDTO.getAssMedic());
            pstm.setString(97, objFuncioDTO.getDepAssMed());
            pstm.setString(98, objFuncioDTO.getCestaBas());
            pstm.setString(99, objFuncioDTO.getValeRef());
            pstm.setString(100, objFuncioDTO.getConvFarma());
            pstm.setString(101, objFuncioDTO.getSegVida());
            pstm.setString(102, objFuncioDTO.getTipoAdm());
            pstm.setString(103, objFuncioDTO.getDefFis());
            pstm.setString(104, objFuncioDTO.getDefFisTipo());
            pstm.setString(105, objFuncioDTO.getDefFisDesc());
            pstm.setString(106, objFuncioDTO.getNacionalid());
            pstm.setString(107, objFuncioDTO.getAnoCheg());
            pstm.setString(108, objFuncioDTO.getFolhaLivro());
            pstm.setString(109, objFuncioDTO.getPgINSS());
            pstm.setString(110, objFuncioDTO.getPgIR());
            pstm.setString(111, objFuncioDTO.getSEFIPOcor());
            pstm.setString(112, objFuncioDTO.getConta_Ctb());
            pstm.setFloat(113, objFuncioDTO.getAltura());
            pstm.setFloat(114, objFuncioDTO.getPeso());
            pstm.setDate(115, objFuncioDTO.getDt_Demis());
            pstm.setFloat(116, objFuncioDTO.getCodCidade());
            pstm.setFloat(117, objFuncioDTO.getCodNaturalid());
            pstm.setString(118, objFuncioDTO.getExpGESP());
            pstm.setString(119, objFuncioDTO.getVinculo());
            pstm.setString(120, objFuncioDTO.getFormaPgto());
            pstm.setFloat(121, objFuncioDTO.getJornada());
            pstm.setString(122, objFuncioDTO.getSegDesemp());
            pstm.setString(123, objFuncioDTO.getFPAdiant());
            pstm.setString(124, objFuncioDTO.getCodAlimentacao());
            pstm.setString(125, objFuncioDTO.getChavebancaria());
            pstm.setFloat(126, objFuncioDTO.getCodPessoaWeb());
            pstm.setString(127, objFuncioDTO.getInterfExt());
            pstm.setString(128, objFuncioDTO.getCod_ExameCNH());
            pstm.setDate(129, objFuncioDTO.getDt_ExameCNH());
            pstm.setString(130, objFuncioDTO.getCNPJ_LabExame());
            pstm.setString(131, objFuncioDTO.getUF_ExameCNH());
            pstm.setString(132, objFuncioDTO.getCRM_ExamCNH());
            pstm.setString(133, objFuncioDTO.getTrabParcial());
            pstm.setString(134, objFuncioDTO.getTeletrabalho());
            pstm.setString(135, objFuncioDTO.getTrabIntermitente());
            pstm.setString(136, objFuncioDTO.getOperador());
            pstm.setDate(137, objFuncioDTO.getDt_Alter());
            pstm.setString(136, objFuncioDTO.getHr_Alter());
           
            
           
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
            
        }
    
    }
    
    
}
