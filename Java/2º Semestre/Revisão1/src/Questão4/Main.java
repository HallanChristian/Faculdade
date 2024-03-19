package Questão4;
public class Main {
    public static void main(String[] args) {

        Aluno[] alunos = new Aluno[10];

        for (int i = 0; i < alunos.length; i++) {
            System.out.println("Informe os dados do Aluno " + (i + 1) + ":");
            alunos[i] = new Aluno();
        }

        for (Aluno aluno : alunos) {
            aluno.imprimir();
        }
    }
}