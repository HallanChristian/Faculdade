package Questão1a3;
import java.util.Scanner;

public class Professor {
    private String nome;
    private int codigoProfessor;
    private String disciplina;
    private Telefone telefone;

    // Construtor
    public Professor() {
        obterInformacoes();
        telefone = new Telefone();
    }

    // Método para obter informações do usuário
    private void obterInformacoes() {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o nome do professor: ");
        this.nome = scanner.nextLine();

        System.out.print("Digite o código do professor: ");
        this.codigoProfessor = scanner.nextInt();
        scanner.nextLine(); // Consumir a quebra de linha pendente

        System.out.print("Digite a disciplina do professor: ");
        this.disciplina = scanner.nextLine();
    }

    // Métodos de acesso (getters e setters)
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCodigoProfessor() {
        return codigoProfessor;
    }

    public void setCodigoProfessor(int codigoProfessor) {
        this.codigoProfessor = codigoProfessor;
    }

    public String getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }

    public Telefone getTelefone() {
        return telefone;
    }

    public void setTelefone(Telefone telefone) {
        this.telefone = telefone;
    }
}
