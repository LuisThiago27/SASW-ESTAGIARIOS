package br.com.DAO;

import br.com.DTO.PessoaDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

public class PessoaDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<PessoaDTO> lista = new ArrayList<>();

    public void CadastrarPessoa(PessoaDTO objPessoaDTO) throws ClassNotFoundException{
    
        String sql = "insert into pessoasteste (nome,Situacao,Dt_Situac,Endereco,Numero,Bairro,Cidade,Complemento,CodCidade,"
                + "UF,CEP,Fone1,Fone2,Email,Regiao,EstCivil,Conjuge,Pai,Mae,RG,RGOrgEmis,RgDtEmis,CPF,TitEleit,TitZona,TitSecao,"
                + "PIS,CNH,CNHDtVenc,CNHCat,Reservista,ReservCat,CTPS_Nro,CTPS_Serie,CTPS_UF,CTPS_Emis,Dt_nasc,Naturalid,Instrucao,"
                + "Sexo,Raca,GrupoSang,Altura,Peso,Indicacao,Dt_FormIni,Dt_FormFim,LocalForm,Certific,Reg_PF,Reg_PFUF,Reg_PFDt,CarNacVig,"
                + "DtValCNV,DtEmissaoCNV,CadastroAFIS,Reg_DRT,Dt_Recicl,Dt_VenCurs,Dt_ExameMe,Dt_Psico,ExtTV,ExtSPP,ExtEscolta,ExtGrdEventos,"
                + "ExtArmasNLetais,Obs,Funcao,Matr,Dig01,Dig02,Dig03,Dig04,Dig05,Dig06,Dig07,Dig08,Dig09,Dig10,PW,Bottom,BottomII,CodPrest,CodVisit,"
                + "PretSalario,Apresen,Ct_Banco,Ct_Agencia,Ct_Conta,Regional,PWWeb,CargoPretend,SecaoPretend,EscalaPretend,HorarioPretend,SindicatoPdr,"
                + "CodFilPretend,PWPortal,PwTickets,Dt_UltAcPortal,CodSatellite,CodPessoaWEB,CodAlimentacao,Chavebancaria,Secao,CodFilPST,CodCli,EnvPontoWhp,"
                + "EnvPontoEmail,Operador,Dt_Alter,Hr_Alter)"
                + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"
                + "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                   
        con = new ConexaoDAO().conexaoBD();
        
        try{
            
            pstm = con.prepareStatement(sql);
            pstm.setString  (1, objPessoaDTO.getnome());   
            pstm.setString  (2, objPessoaDTO.getSituacao()); 
            pstm.setString  (3, objPessoaDTO.getDt_Situac()); 
            pstm.setString  (4, objPessoaDTO.getEndereco()); 
            pstm.setString  (5, objPessoaDTO.getNumero());
            pstm.setString  (6, objPessoaDTO.getBairro());
            pstm.setString  (7, objPessoaDTO.getCidade());
            pstm.setString  (8, objPessoaDTO.getComplemento());
            pstm.setFloat   (9, objPessoaDTO.getCodCidade());
            pstm.setString  (10, objPessoaDTO.getUF());
            pstm.setString  (11, objPessoaDTO.getCEP());
            pstm.setString  (12, objPessoaDTO.getFone1());
            pstm.setString  (13, objPessoaDTO.getFone2());
            pstm.setString  (14, objPessoaDTO.getEmail());
            pstm.setString  (15, objPessoaDTO.getRegiao());
            pstm.setString  (16, objPessoaDTO.getEstCivil());
            pstm.setString  (17, objPessoaDTO.getConjuge());
            pstm.setString  (18, objPessoaDTO.getPai());
            pstm.setString  (19, objPessoaDTO.getMae());
            pstm.setString  (20, objPessoaDTO.getRG());
            pstm.setString  (21, objPessoaDTO.getRGOrgEmis());
            pstm.setString  (22, objPessoaDTO.getRgDtEmis());
            pstm.setString  (23, objPessoaDTO.getCPF());
            pstm.setString  (24, objPessoaDTO.getTitEleit());
            pstm.setString  (25, objPessoaDTO.getTitZona());
            pstm.setString  (26, objPessoaDTO.getTitSecao());
            pstm.setString  (27, objPessoaDTO.getPIS());
            pstm.setString  (28, objPessoaDTO.getCNH());
            pstm.setString  (29, objPessoaDTO.getCNHDtVenc());
            pstm.setString  (30, objPessoaDTO.getCNHCat());
            pstm.setString  (31, objPessoaDTO.getReservista());
            pstm.setString  (32, objPessoaDTO.getReservCat());
            pstm.setString  (33, objPessoaDTO.getCTPS_Nro());
            pstm.setString  (34, objPessoaDTO.getCTPS_Serie());
            pstm.setString  (35, objPessoaDTO.getCTPS_UF());
            pstm.setString  (36, objPessoaDTO.getCTPS_Emis());
            pstm.setString  (37, objPessoaDTO.getDt_nasc());
            pstm.setString  (38, objPessoaDTO.getNaturalid());
            pstm.setFloat   (39, objPessoaDTO.getInstrucao());
            pstm.setString  (40, objPessoaDTO.getSexo());
            pstm.setString  (41, objPessoaDTO.getRaca());
            pstm.setString  (42, objPessoaDTO.getGrupoSang());
            pstm.setFloat   (43, objPessoaDTO.getAltura());
            pstm.setFloat   (44, objPessoaDTO.getPeso());
            pstm.setString  (45, objPessoaDTO.getIndicacao());
            pstm.setString  (46, objPessoaDTO.getDt_FormIni());
            pstm.setString  (47, objPessoaDTO.getDt_FormFim());
            pstm.setString  (48, objPessoaDTO.getLocalForm());
            pstm.setString  (49, objPessoaDTO.getCertific());
            pstm.setString  (50, objPessoaDTO.getReg_PF());
            pstm.setString  (51, objPessoaDTO.getReg_PFUF());
            pstm.setString  (52, objPessoaDTO.getReg_PFDt());
            pstm.setString  (53, objPessoaDTO.getCarNacVig());
            pstm.setString  (54, objPessoaDTO.getDtValCNV());
            pstm.setString  (55, objPessoaDTO.getDtEmissaoCNV());
            pstm.setString  (56, objPessoaDTO.getCadastroAFIS());
            pstm.setString  (57, objPessoaDTO.getReg_DRT());
            pstm.setString  (58, objPessoaDTO.getDt_Recicl());
            pstm.setString  (59, objPessoaDTO.getDt_VenCurs());
            pstm.setString  (60, objPessoaDTO.getDt_ExameMe());
            pstm.setString  (61, objPessoaDTO.getDt_Psico());
            pstm.setString  (62, objPessoaDTO.getExtTV());
            pstm.setString  (63, objPessoaDTO.getExtSPP());
            pstm.setString  (64, objPessoaDTO.getExtEscolta());
            pstm.setString  (65, objPessoaDTO.getExtGrdEventos());
            pstm.setString  (66, objPessoaDTO.getExtArmasNLetais());
            pstm.setString  (67, objPessoaDTO.getObs());
            pstm.setString  (68, objPessoaDTO.getFuncao());
            pstm.setFloat   (69, objPessoaDTO.getMatr());
            pstm.setFloat   (70, objPessoaDTO.getDig01());
            pstm.setFloat   (71, objPessoaDTO.getDig02());
            pstm.setFloat   (72, objPessoaDTO.getDig03());
            pstm.setFloat   (73, objPessoaDTO.getDig04());
            pstm.setFloat   (74, objPessoaDTO.getDig05());
            pstm.setFloat   (75, objPessoaDTO.getDig06());
            pstm.setFloat   (76, objPessoaDTO.getDig07());
            pstm.setFloat   (77, objPessoaDTO.getDig08());
            pstm.setFloat   (78, objPessoaDTO.getDig09());
            pstm.setFloat   (79, objPessoaDTO.getDig10());
            pstm.setString  (80, objPessoaDTO.getPW());
            pstm.setString  (81, objPessoaDTO.getBottom());
            pstm.setString  (82, objPessoaDTO.getBottomII());
            pstm.setFloat   (83, objPessoaDTO.getCodPrest());
            pstm.setFloat   (84, objPessoaDTO.getCodVisit());
            pstm.setFloat   (85, objPessoaDTO.getPretSalario());
            pstm.setString  (86, objPessoaDTO.getApresen());
            pstm.setString  (87, objPessoaDTO.getCt_Banco());
            pstm.setString  (88, objPessoaDTO.getCt_Agencia());
            pstm.setString  (89, objPessoaDTO.getCt_Conta());
            pstm.setFloat   (90, objPessoaDTO.getRegional());
            pstm.setString  (91, objPessoaDTO.getPWWeb());
            pstm.setString  (92, objPessoaDTO.getCargoPretend());
            pstm.setString  (93, objPessoaDTO.getSecaoPretend());
            pstm.setString  (94, objPessoaDTO.getEscalaPretend());
            pstm.setFloat   (95, objPessoaDTO.getHorarioPretend());
            pstm.setString  (96, objPessoaDTO.getSindicatoPdr());
            pstm.setFloat   (97, objPessoaDTO.getCodFilPretend());
            pstm.setString  (98, objPessoaDTO.getPWPortal());
            pstm.setString  (99, objPessoaDTO.getPwTickets());
            pstm.setString  (100, objPessoaDTO.getDt_UltAcPortal());
            pstm.setFloat  (101, objPessoaDTO.getCodSatellite());
            pstm.setFloat (102, objPessoaDTO.getCodPessoaWEB());
            pstm.setString  (103, objPessoaDTO.getCodAlimentacao());
            pstm.setString  (104, objPessoaDTO.getChavebancaria());
            pstm.setString  (105, objPessoaDTO.getSecao());
            pstm.setFloat (106, objPessoaDTO.getCodFilPST());
            pstm.setString  (107, objPessoaDTO.getCodCli());
            pstm.setFloat  (108, objPessoaDTO.getEnvPontoWhp());
            pstm.setFloat  (109, objPessoaDTO.getEnvPontoEmail());
            pstm.setString  (110, objPessoaDTO.getOperador());
            pstm.setString  (111, objPessoaDTO.getDt_Alter());
            pstm.setString  (112, objPessoaDTO.getHr_Alter());
            
            pstm.execute();
            pstm.close();
            
            
            
        } catch(SQLException e){
        }
    }

    
    public ArrayList<PessoaDTO> PesquisarPessoa()throws ClassNotFoundException{
        
        String sql = "select * from pessoasteste";
        con = new ConexaoDAO().conexaoBD();
       
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
           
            while (rs.next()) {
            
            PessoaDTO objPessoaDTO = new PessoaDTO();
            objPessoaDTO.setId_codigo(rs.getInt("id_codigo"));
            objPessoaDTO.setnome(rs.getString("nome"));
            objPessoaDTO.setSituacao(rs.getString("Situacao"));
            objPessoaDTO.setDt_Situac(rs.getString("Dt_Situac"));
            objPessoaDTO.setEndereco(rs.getString("Endereco"));
            objPessoaDTO.setNumero(rs.getString("Numero"));
            objPessoaDTO.setBairro(rs.getString("Bairro"));
            objPessoaDTO.setCidade(rs.getString("Cidade"));
            objPessoaDTO.setComplemento(rs.getString("Complemento"));
            
            
            lista.add(objPessoaDTO);
            
            }

        } catch (SQLException e){
        }
        return lista;
       
    }
    
    public void ExcluirPessoa (PessoaDTO objPessoaDTO) throws ClassNotFoundException{
        
        String sql = "delete from pessoasteste where id_codigo = ?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setInt (1, objPessoaDTO.getId_codigo());
            
            
            
            pstm.execute();
            pstm.close();
            
       
        } catch (SQLException e ){
        
        }
                
     }
    
        public void AlterarPessoa (PessoaDTO objPessoaDTO) throws ClassNotFoundException{
        
        String sql = "update pessoasteste set nome = ?, Situacao = ?, Dt_Situac = ? , Endereco =?, "
                    + "Numero = ?, Bairro=?, Cidade = ?, Complemento = ?  where id_codigo = ?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setString (1, objPessoaDTO.getnome());
            pstm.setString (2, objPessoaDTO.getSituacao());
            pstm.setString (3, objPessoaDTO.getDt_Situac());
            pstm.setString (4, objPessoaDTO.getEndereco());
            pstm.setString (5, objPessoaDTO.getNumero());
            pstm.setString (6, objPessoaDTO.getBairro());
            pstm.setString (7, objPessoaDTO.getCidade());
            pstm.setString (8, objPessoaDTO.getComplemento());
                
            
            pstm.setInt (9, objPessoaDTO.getId_codigo());
            
            
            
            pstm.execute();
            pstm.close();
            
       
        } catch (SQLException e ){
        
        }
    
        }
}
    