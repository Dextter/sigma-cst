package br.ifrn.sigma.dominio;

public class ComponenteCurricular {
	private int id;
	private String nome;
	private int creditos;
	private String ementa;
	private int semestre;
	private Matriz matriz;

	public ComponenteCurricular() {
		super();
	}
	
	
	public ComponenteCurricular(int id, String nome, int creditos, String ementa, int semestre) {
		super();
		this.id = id;
		this.nome = nome;
		this.creditos = creditos;
		this.ementa = ementa;
		this.semestre = semestre;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getCreditos() {
		return creditos;
	}

	public void setCreditos(int creditos) {
		this.creditos = creditos;
	}

	public String getEmenta() {
		return ementa;
	}

	public void setEmenta(String ementa) {
		this.ementa = ementa;
	}

	public int getSemestre() {
		return semestre;
	}

	public void setSemestre(int semestre) {
		this.semestre = semestre;
	}

	public Matriz getMatriz() {
		return matriz;
	}

	public void setMatriz(Matriz matriz) {
		this.matriz = matriz;
	}
	
	public int getHoraAula() {
		return this.creditos * 20;
	}
	
	public int getHora() {
		int horas = (int) (this.getHoraAula() * 0.75);
		return horas;
	}
}
