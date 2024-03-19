package app;

import java.time.LocalDate;
import java.util.Scanner;

import agregacao.Empresa;
import agregacao.Funcionario;

public class MenuPrincipal {

	private static Scanner sc = new Scanner(System.in);
	private static Empresa[] empresas = new Empresa[10];
	private static Funcionario[] funcionarios = new Funcionario[10];
	private static int contadorEmpresas = 0;
	private static int contadorFuncionarios = 0;

	public static void main(String[] args) {

		int opcao;
		do {
			System.out.println("\n=== Menu Principal ===");
			System.out.println("1. Cadastrar");
			System.out.println("2. Listar todos");
			System.out.println("3. Listar filtrando Funcionarios por Empresas");
			System.out.println("4. Sair");
			System.out.print("Escolha uma opção: ");
			opcao = sc.nextInt();
			sc.nextLine();

			switch (opcao) {

			case 1:
				cadastrar();
				break;
			case 2:
				listarTodos();
				break;
			case 3:
				listarFiltrando();
				break;
			case 4:
				System.out.println("Saindo...");
				break;
			default:
				System.out.println("Opção inválida! Tente novamente.");
				break;

			}
		} while (opcao != 4);

	}

	private static void cadastrar() {
		System.out.println("\n=== Cadastro ===");
		System.out.print("Digite o cnpj da Empresa: ");
		String cnpj = sc.nextLine();
		sc.nextLine();
		System.out.print("Digite o nome da Empresa: ");
		String nomeEmp = sc.nextLine();
		System.out.print("Digite a data de criação da Empresa (ano-mes-dia): ");
		String InserirData = sc.nextLine();
		LocalDate dataCriacao = LocalDate.parse(InserirData);
		System.out.print("Digite o endereço da Empresa: ");
		String endereco = sc.nextLine();
		System.out.print("Digite o telefone da Empresa: ");
		String telefone = sc.nextLine();
		System.out.print("Digite a quantidade máxima de funcionários da empresa: ");
		int tamanhoInicialFuncionarios = sc.nextInt();
		sc.nextLine();

		Empresa empresa = new Empresa(cnpj, nomeEmp, endereco, telefone, tamanhoInicialFuncionarios, dataCriacao);
		empresas[contadorEmpresas++] = empresa;

		System.out.print("Digite a quantidade de funcionários que deseja adicionar: ");
		int quantidadeFuncionarios = sc.nextInt();
		sc.nextLine();
		
		if (quantidadeFuncionarios > tamanhoInicialFuncionarios) {
            System.out.println("Quantidade de funcionários excede a capacidade máxima da empresa.");
            return;
        }

		for (int i = 0; i < quantidadeFuncionarios; i++) {
			System.out.println("\n=== Adicionar Funcionário " + (i + 1) + " ===");
			System.out.print("\nDigite o cpf do Funcionario: ");
			String cpf = sc.nextLine();
			sc.nextLine();
			System.out.print("Digite o nome do Funcionario: ");
			String nomeFunc = sc.nextLine();
			System.out.print("Digite o cargo do Funcionario: ");
			String cargo = sc.nextLine();
			sc.nextLine();
			System.out.print("Digite o salario: ");
			double salario = sc.nextDouble();
			Funcionario funcionario = new Funcionario(cpf, nomeFunc, cargo, salario, empresa);
			empresa.adicionarFuncionario(funcionario);
			funcionarios[contadorFuncionarios++] = funcionario;

			System.out.println("Cadastro realizado com sucesso!");
		}
	}

	private static void listarTodos() {
		System.out.println("\n=== Lista de Empresas ===");
		for (int i = 0; i < contadorEmpresas; i++) {
			System.out.println("\nCnpj: " + empresas[i].getCnpj());
			System.out.println("Nome: " + empresas[i].getNomeEmp());
			System.out.println("Endereço: " + empresas[i].getEndereco());
			System.out.println("Telefone: " + empresas[i].getTelefone());
			System.out.print("Data de Criaçao: " + empresas[i].getDataCriacao());
			System.out.println();
		}
	}

	private static void listarFiltrando() {
		System.out.println("\n=== Filtrar por atributo ===");
		System.out.print("Digite o Cnpj da empresa para filtrar funcionarios: ");
		String cnpjEmpresa = sc.nextLine();
		sc.nextLine();
		boolean empresaEncontrada = false;
		for (int i = 0; i < contadorEmpresas; i++) {
			if (empresas[i].getCnpj().equals(cnpjEmpresa)) {
				empresaEncontrada = true;
				System.out.println("\n=== Funcionarios da empresa " + empresas[i].getNomeEmp() + " ===");
				for (int j = 0; j < contadorFuncionarios; j++) {
					if (funcionarios[j].getEmpresa().getCnpj().equals(cnpjEmpresa)) {
						System.out.println("Cpf: " + funcionarios[j].getCpf());
						System.out.println("Nome: " + funcionarios[j].getNomeFunc());
						System.out.println("Cargo: " + funcionarios[j].getCargo());
						System.out.println("Salario: " + funcionarios[j].getSalario());
						System.out.println();
					}
				}
				break;
			}
		}
		if (!empresaEncontrada) {
			System.out.println("Empresa não encontrada.");
		}
	}
}