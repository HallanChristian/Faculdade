package Questão4;
import java.util.Scanner;

public class Aluno {
    private String nome;
    private String disciplina;
    private double notaA1;
    private double notaA2;

    public Aluno() {
        obterInformacoes();
    }

    private void obterInformacoes() {
        Scanner sc = new Scanner(System.in);

        System.out.print("Digite o nome do aluno: ");
        this.nome = sc.nextLine();

        System.out.print("Digite a disciplina: ");
        this.disciplina = sc.nextLine();

        System.out.print("Digite a nota da A1: ");
        this.notaA1 = sc.nextDouble();

        System.out.print("Digite a nota da A2: ");
        this.notaA2 = sc.nextDouble();
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }

    public double getNotaA1() {
        return notaA1;
    }

    public void setNotaA1(double notaA1) {
        this.notaA1 = notaA1;
    }

    public double getNotaA2() {
        return notaA2;
    }

    public void setNotaA2(double notaA2) {
        this.notaA2 = notaA2;
    }

    public double media() {
        return (notaA1 + notaA2) / 2;
    }

    public String aprovado() {
        double media = media();
        return (media >= 6.0) ? "Aprovado" : "Reprovado";
    }

    public void imprimir() {
        System.out.println("Nome: " + nome);
        System.out.println("Disciplina: " + disciplina);
        System.out.println("Nota A1: " + notaA1);
        System.out.println("Nota A2: " + notaA2);
        System.out.println("Média: " + media());
        System.out.println("Status: " + aprovado());
        System.out.println();
    }
}
