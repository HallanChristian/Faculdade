package agregacao;

import java.time.LocalDate;

public class Empresa {

	public String cnpj;
	private String nomeEmp;
	private String endereco;
	private String telefone;
	private Funcionario[] funcionarios;
    private int contadorFuncionarios;
    private LocalDate dataCriacao;

	public Empresa(String cnpj, String nomeEmp, String endereco, String telefone, int tamanhoInicialFuncionarios, LocalDate dataCriacao) {
		this.cnpj = cnpj;
		this.nomeEmp = nomeEmp;
		this.endereco = endereco;
		this.telefone = telefone;
		this.dataCriacao = dataCriacao;
		this.funcionarios = new Funcionario[tamanhoInicialFuncionarios];
        this.contadorFuncionarios = 0;
	}
	
	public void adicionarFuncionario(Funcionario funcionario) {
        if (contadorFuncionarios == funcionarios.length) {
            Funcionario[] novoArray = new Funcionario[funcionarios.length * 2];
            System.arraycopy(funcionarios, 0, novoArray, 0, funcionarios.length);
            funcionarios = novoArray;
        }

        funcionarios[contadorFuncionarios] = funcionario;
        contadorFuncionarios++;
    }


	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getNomeEmp() {
		return nomeEmp;
	}

	public void setNomeEmp(String nomeEmp) {
		this.nomeEmp = nomeEmp;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public Funcionario[] getFuncionarios() {
		return funcionarios;
	}

	public void setFuncionarios(Funcionario[] funcionarios) {
		this.funcionarios = funcionarios;
	}

	public int getContadorFuncionarios() {
		return contadorFuncionarios;
	}

	public void setContadorFuncionarios(int contadorFuncionarios) {
		this.contadorFuncionarios = contadorFuncionarios;
	}

	public LocalDate getDataCriacao() {
		return dataCriacao;
	}

	public void setDataCriacao(LocalDate dataCriacao) {
		this.dataCriacao = dataCriacao;
	}
}
