//ALuno: Hallan Christian Morais da Cruz
//Calculadora Média dos Alunos
import java.util.Scanner;

public class MediaAlunos {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Digite a quantidade de alunos: ");
        int quantidadeAlunos = sc.nextInt();

        double[][] notas = new double[quantidadeAlunos][4];

        preencherNotas(notas, sc);

        System.out.println("\nMédia de cada aluno:");

        for (int i = 0; i < quantidadeAlunos; i++) {
            double media = calcularMedia(notas[i]);
            System.out.println("Aluno " + (i + 1) + ": " + media);
        }

        sc.close();
    }

    private static void preencherNotas(double[][] notas, Scanner sc) {
        for (int i = 0; i < notas.length; i++) {
            System.out.println("\nDigite as notas do Aluno " + (i + 1) + ":");
            for (int j = 0; j < notas[0].length; j++) {
                System.out.print("Nota " + (j + 1) + ": ");
                notas[i][j] = sc.nextDouble();
            }
        }
    }

    private static double calcularMedia(double[] notas) {
        double soma = 0;

        for (double nota : notas) {
            soma += nota;
        }

        return soma / notas.length;
    }
}

