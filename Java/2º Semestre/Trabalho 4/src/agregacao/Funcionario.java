package agregacao;

public class Funcionario {

	private String cpf;
	private String nomeFunc;
	private String cargo;
	private double salario;
	private Empresa empresa;

	public Funcionario(String cpf, String nomeFunc, String cargo, double salario, Empresa empresa) {
        this.cpf = cpf;
        this.nomeFunc = nomeFunc;
        this.cargo = cargo;
        this.salario = salario;
        this.empresa = empresa;
    }

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getNomeFunc() {
		return nomeFunc;
	}

	public void setNomeFunc(String nomeFunc) {
		this.nomeFunc = nomeFunc;
	}

	public String getCargo() {
		return cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public double getSalario() {
		return salario;
	}

	public void setSalario(double salario) {
		this.salario = salario;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}
}
