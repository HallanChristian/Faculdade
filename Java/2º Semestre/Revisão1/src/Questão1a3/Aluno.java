package Questão1a3;
import java.util.Scanner;

public class Aluno {
    private String nome;
    private int matricula;
    private int idade;
    private Telefone telefone;

    // Construtor
    public Aluno() {
        obterInformacoes();
        telefone = new Telefone();
    }

    // Método para obter informações do usuário
    private void obterInformacoes() {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o nome do aluno: ");
        this.nome = scanner.nextLine();

        System.out.print("Digite a matrícula do aluno: ");
        this.matricula = scanner.nextInt();

        System.out.print("Digite a idade do aluno: ");
        this.idade = scanner.nextInt();

        scanner.nextLine(); // Consumir a quebra de linha pendente
    }

    // Métodos de acesso (getters e setters)
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public Telefone getTelefone() {
        return telefone;
    }

    public void setTelefone(Telefone telefone) {
        this.telefone = telefone;
    }
}
