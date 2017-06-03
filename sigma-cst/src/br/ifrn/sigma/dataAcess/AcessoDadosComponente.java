package br.ifrn.sigma.dataAcess;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import br.ifrn.sigma.connectioFactory.Conexao;
import br.ifrn.sigma.dominio.ComponenteCurricular;

public class AcessoDadosComponente extends Conexao{

	public ArrayList<ComponenteCurricular> select(int id){
        ArrayList<ComponenteCurricular> componentes_curriculares = new ArrayList<ComponenteCurricular>();
        CriarConexao();
        
        try {
            
            preparacao = conexao.prepareStatement("SELECT * FROM componente_curricular WHERE id_matriz = ? ORDER BY semestre");
            preparacao.setInt(1, id);            
            resultado = preparacao.executeQuery();                        
            
            while(resultado.next()){                
                componentes_curriculares.add(new ComponenteCurricular(resultado.getInt("id"), resultado.getString("nome"),resultado.getInt("creditos") ,resultado.getString("ementa"), 
                        resultado.getInt("semestre")));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(AcessoDadosComponente.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            fecharConexao();
        }
        
        return componentes_curriculares;
    }	

}
