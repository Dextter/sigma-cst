package br.ifrn.sigma.dataAcess;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import br.ifrn.sigma.connectioFactory.Conexao;
import br.ifrn.sigma.dominio.ComponenteCurricular;
import br.ifrn.sigma.dominio.Matriz;

public class AcessoDadosMatriz extends Conexao{
	
	public Matriz getMatriz(int idCurso){
        
        CriarConexao();
        try {
            
            preparacao = conexao.prepareStatement("SELECT * FROM matriz_curricular WHERE id_curso = ?");
            preparacao.setInt(1, idCurso);            
            resultado = preparacao.executeQuery();                        
            
            while(resultado.next()){                
            	Matriz matriz = new Matriz();            	
				matriz.setId(resultado.getInt("id"));
				matriz.setDescricao(resultado.getString("descricao"));
				matriz.setAtiva(resultado.getBoolean("ativa"));
				return matriz;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(AcessoDadosMatriz.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            fecharConexao();
        }
                    
        return null;
    }		
}
