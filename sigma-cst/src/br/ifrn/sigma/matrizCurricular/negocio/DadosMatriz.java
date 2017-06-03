package br.ifrn.sigma.matrizCurricular.negocio;

import java.util.List;

import br.ifrn.sigma.dataAcess.AcessoDadosComponente;
import br.ifrn.sigma.dataAcess.AcessoDadosMatriz;
import br.ifrn.sigma.dominio.ComponenteCurricular;
import br.ifrn.sigma.dominio.Matriz;

public class DadosMatriz {

	public Matriz getMatriz(int idCurso) {
		
		// Instancia as classes de acesso a dados 
		AcessoDadosMatriz getDadosMatriz = new AcessoDadosMatriz();
		AcessoDadosComponente dadosComponente = new AcessoDadosComponente();
		
		// Recupera a matriz curricular
		Matriz matriz = getDadosMatriz.getMatriz(idCurso);
		
		// Recupera, na sequência, a lista de componentes curriculares associados
		List<ComponenteCurricular> componentes = dadosComponente.select(matriz.getId());
		matriz.setComponentesCurriculares(componentes);
		
		// Retorna a matriz curricular
		return matriz;
	}

}
