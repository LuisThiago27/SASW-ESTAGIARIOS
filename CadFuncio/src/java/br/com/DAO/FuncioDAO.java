package br.com.DAO;

import br.com.DTO.FuncioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class FuncioDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<FuncioDTO> lista = new ArrayList<>();
    
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
                + " InterfExt, Cod_ExameCNH, Dt_ExameCNH, CNPJ_LabExame, UF_ExameCNH, CRM_ExamCNH, TrabParcial, Teletrabalho,"
                + " TrabIntermitente, Operador, Dt_Alter, Hr_Alter) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                + " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                + " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                + " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                + " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                + " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
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
            pstm.setString(9, objFuncioDTO.getDt_Admis());
            pstm.setString(10, objFuncioDTO.getCargo());
            pstm.setFloat(11, objFuncioDTO.getCodCargo());
            pstm.setString(12, objFuncioDTO.getApresen());
            pstm.setString(13, objFuncioDTO.getSituacao());
            pstm.setString(14, objFuncioDTO.getDt_Situac());
            pstm.setString(15, objFuncioDTO.getEscala());
            pstm.setFloat(16, objFuncioDTO.getHorario());
            pstm.setFloat(17, objFuncioDTO.getGrpEscala());
            pstm.setString(18, objFuncioDTO.getFuncao());
            pstm.setString(19, objFuncioDTO.getDt_FormIni());
            pstm.setString(20, objFuncioDTO.getDt_FormFim());
            pstm.setString(21, objFuncioDTO.getLocalForm());
            pstm.setString(22, objFuncioDTO.getCertific());
            pstm.setString(23, objFuncioDTO.getReg_PF());
            pstm.setString(24, objFuncioDTO.getLocal_PF());
            pstm.setString(25, objFuncioDTO.getReg_PFUF());
            pstm.setString(26, objFuncioDTO.getReg_PFDt());
            pstm.setString(27, objFuncioDTO.getCarNacVig());
            pstm.setString(28, objFuncioDTO.getDtValCNV());
            pstm.setString(29, objFuncioDTO.getDtEmissaoCNV());
            pstm.setString(30, objFuncioDTO.getCadastroAFIS());
            pstm.setString(31, objFuncioDTO.getReg_MT());
            pstm.setString(32, objFuncioDTO.getDt_Recicl());
            pstm.setString(33, objFuncioDTO.getDt_VenCurs());
            pstm.setString(34, objFuncioDTO.getDt_ExameMe());
            pstm.setString(35, objFuncioDTO.getDt_Psico());
            pstm.setString(36, objFuncioDTO.getExtensaoTV());
            pstm.setString(37, objFuncioDTO.getExtSegPes());
            pstm.setString(38, objFuncioDTO.getExtEscolta());
            pstm.setString(39, objFuncioDTO.getExtGrdEventos());
            pstm.setString(40, objFuncioDTO.getExtArmasNLetais());
            pstm.setString(41, objFuncioDTO.getGrupoSang());
            pstm.setString(42, objFuncioDTO.getInstrucao());
            pstm.setString(43, objFuncioDTO.getRaca());
            pstm.setString(44, objFuncioDTO.getEstCivil());
            pstm.setString(45, objFuncioDTO.getEndereco());
            pstm.setString(46, objFuncioDTO.getNumero());
            pstm.setString(47, objFuncioDTO.getComplemento());
            pstm.setString(48, objFuncioDTO.getBairro());
            pstm.setString(49, objFuncioDTO.getCidade());
            pstm.setString(50, objFuncioDTO.getUF());
            pstm.setString(51, objFuncioDTO.getCEP());
            pstm.setString(52, objFuncioDTO.getFone1());
            pstm.setString(53, objFuncioDTO.getFone2());
            pstm.setString(54, objFuncioDTO.getEmail());
            pstm.setString(55, objFuncioDTO.getDt_Nasc());
            pstm.setString(56, objFuncioDTO.getSexo());
            pstm.setString(57, objFuncioDTO.getNaturalid());
            pstm.setString(58, objFuncioDTO.getPai());
            pstm.setString(59, objFuncioDTO.getMae());
            pstm.setString(60, objFuncioDTO.getConjuge());
            pstm.setString(61, objFuncioDTO.getCNH());
            pstm.setString(62, objFuncioDTO.getDt_VenCNH());
            pstm.setString(63, objFuncioDTO.getUF_CNH());
            pstm.setString(64, objFuncioDTO.getCategoria());
            pstm.setString(65, objFuncioDTO.getRG());
            pstm.setString(66, objFuncioDTO.getOrgEmis());
            pstm.setString(67, objFuncioDTO.getRgDtEmis());
            pstm.setString(68, objFuncioDTO.getCPF());
            pstm.setString(69, objFuncioDTO.getPIS());
            pstm.setString(70, objFuncioDTO.getReservista());
            pstm.setString(71, objFuncioDTO.getReservCat());
            pstm.setString(72, objFuncioDTO.getCTPS_Nro());
            pstm.setString(73, objFuncioDTO.getCTPS_Serie());
            pstm.setString(74, objFuncioDTO.getCTPS_UF());
            pstm.setString(75, objFuncioDTO.getCTPS_Emis());
            pstm.setString(76, objFuncioDTO.getTitEleit());
            pstm.setString(77, objFuncioDTO.getTitEZona());
            pstm.setString(78, objFuncioDTO.getTitSecao());
            pstm.setString(79, objFuncioDTO.getCt_Banco());
            pstm.setString(80, objFuncioDTO.getCt_Agencia());
            pstm.setString(81, objFuncioDTO.getCt_Conta());
            pstm.setString(82, objFuncioDTO.getCt_CodOper());
            pstm.setString(83, objFuncioDTO.getObs());
            pstm.setFloat(84, objFuncioDTO.getSalario());
            pstm.setString(85, objFuncioDTO.getSindicato());
            pstm.setFloat(86, objFuncioDTO.getCHMes());
            pstm.setFloat(87, objFuncioDTO.getCHSeman());
            pstm.setFloat(88, objFuncioDTO.getHe_Periodo());
            pstm.setString(89, objFuncioDTO.getDepIR());
            pstm.setString(90, objFuncioDTO.getDepSF());
            pstm.setString(91, objFuncioDTO.getFGTSOpcao());
            pstm.setString(92, objFuncioDTO.getFGTSBanco());
            pstm.setString(93, objFuncioDTO.getFGTSAg());
            pstm.setString(94, objFuncioDTO.getPgCtSin());
            pstm.setString(95, objFuncioDTO.getAssMedic());
            pstm.setString(96, objFuncioDTO.getDepAssMed());
            pstm.setString(97, objFuncioDTO.getCestaBas());
            pstm.setString(98, objFuncioDTO.getValeRef());
            pstm.setString(99, objFuncioDTO.getConvFarma());
            pstm.setString(100, objFuncioDTO.getSegVida());
            pstm.setString(101, objFuncioDTO.getTipoAdm());
            pstm.setString(102, objFuncioDTO.getDefFis());
            pstm.setString(103, objFuncioDTO.getDefFisTipo());
            pstm.setString(104, objFuncioDTO.getDefFisDesc());
            pstm.setString(105, objFuncioDTO.getNacionalid());
            pstm.setString(106, objFuncioDTO.getAnoCheg());
            pstm.setString(107, objFuncioDTO.getFolhaLivro());
            pstm.setString(108, objFuncioDTO.getPgINSS());
            pstm.setString(109, objFuncioDTO.getPgIR());
            pstm.setString(110, objFuncioDTO.getSEFIPOcor());
            pstm.setString(111, objFuncioDTO.getConta_Ctb());
            pstm.setFloat(112, objFuncioDTO.getAltura());
            pstm.setFloat(113, objFuncioDTO.getPeso());
            pstm.setString(114, objFuncioDTO.getDt_Demis());
            pstm.setFloat(115, objFuncioDTO.getCodCidade());
            pstm.setFloat(116, objFuncioDTO.getCodNaturalid());
            pstm.setString(117, objFuncioDTO.getExpGESP());
            pstm.setString(118, objFuncioDTO.getVinculo());
            pstm.setString(119, objFuncioDTO.getFormaPgto());
            pstm.setFloat(120, objFuncioDTO.getJornada());
            pstm.setString(121, objFuncioDTO.getSegDesemp());
            pstm.setString(122, objFuncioDTO.getFPAdiant());
            pstm.setString(123, objFuncioDTO.getCodAlimentacao());
            pstm.setString(124, objFuncioDTO.getChavebancaria());
            pstm.setFloat(125, objFuncioDTO.getCodPessoaWeb());
            pstm.setString(126, objFuncioDTO.getInterfExt());
            pstm.setString(127, objFuncioDTO.getCod_ExameCNH());
            pstm.setString(128, objFuncioDTO.getDt_ExameCNH());
            pstm.setString(129, objFuncioDTO.getCNPJ_LabExame());
            pstm.setString(130, objFuncioDTO.getUF_ExameCNH());
            pstm.setString(131, objFuncioDTO.getCRM_ExamCNH());
            pstm.setString(132, objFuncioDTO.getTrabParcial());
            pstm.setString(133, objFuncioDTO.getTeletrabalho());
            pstm.setString(134, objFuncioDTO.getTrabIntermitente());
            pstm.setString(135, objFuncioDTO.getOperador());
            pstm.setString(136, objFuncioDTO.getDt_Alter());
            pstm.setString(137, objFuncioDTO.getHr_Alter());
           
           
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
            
        }
    }
    
    public ArrayList<FuncioDTO> PesquisarFuncio() throws ClassNotFoundException{
        
       String sql = "select * from tb_funcionario";
       con = new ConexaoDAO().conexaoBD();         
       
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while (rs.next()){
                FuncioDTO objFuncioDTO = new FuncioDTO();
                objFuncioDTO.setMatr(rs.getFloat("Matr"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome_Guer(rs.getString("Nome_Guer"));
                objFuncioDTO.setCodFil(rs.getFloat("CodFil"));
                objFuncioDTO.setRegional(rs.getFloat("Regional"));
                objFuncioDTO.setSecao(rs.getString("Secao"));
                objFuncioDTO.setCCusto(rs.getString("CCusto"));
                objFuncioDTO.setCodPonto(rs.getString("CodPonto"));
                objFuncioDTO.setDt_Admis(rs.getString("Dt_Admis"));
                objFuncioDTO.setCargo(rs.getString("Cargo"));
                objFuncioDTO.setCodCargo(rs.getFloat("CodCargo"));
                objFuncioDTO.setApresen(rs.getString("Apresen"));
                objFuncioDTO.setSituacao(rs.getString("Situacao"));
                objFuncioDTO.setDt_Situac(rs.getString("Dt_Situac"));
                objFuncioDTO.setEscala(rs.getString("Escala"));
                objFuncioDTO.setHorario(rs.getFloat("Horario"));
                objFuncioDTO.setGrpEscala(rs.getFloat("GrpEscala"));
                objFuncioDTO.setFuncao(rs.getString("Funcao"));
                objFuncioDTO.setDt_FormIni(rs.getString("Dt_FormIni"));
                objFuncioDTO.setDt_FormFim(rs.getString("Dt_FormFim"));
                objFuncioDTO.setLocalForm(rs.getString("LocalForm"));
                objFuncioDTO.setCertific(rs.getString("Certific"));
                objFuncioDTO.setReg_PF(rs.getString("Reg_PF"));
                objFuncioDTO.setLocal_PF(rs.getString("Local_PF"));
                objFuncioDTO.setReg_PFUF(rs.getString("Reg_PFUF"));
                objFuncioDTO.setReg_PFDt(rs.getString("Reg_PFDt"));
                objFuncioDTO.setCarNacVig(rs.getString("CarNacVig"));
                objFuncioDTO.setDtValCNV(rs.getString("DtValCNV"));
                objFuncioDTO.setDtEmissaoCNV(rs.getString("DtEmissaoCNV"));
                objFuncioDTO.setCadastroAFIS(rs.getString("CadastroAFIS"));
                objFuncioDTO.setReg_MT(rs.getString("Reg_MT"));
                objFuncioDTO.setDt_Recicl(rs.getString("Dt_Recicl"));
                objFuncioDTO.setDt_VenCurs(rs.getString("Dt_VenCurs"));
                objFuncioDTO.setDt_ExameMe(rs.getString("Dt_Exameme"));
                objFuncioDTO.setDt_Psico(rs.getString("Dt_Psico"));
                objFuncioDTO.setExtensaoTV(rs.getString("ExtensaoTV"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                objFuncioDTO.setNome(rs.getString("Nome"));
                
                
                
                lista.add(objFuncioDTO);
                
            }
               
        } catch (SQLException e) {
            
        }
       
        return lista;
    }
}
