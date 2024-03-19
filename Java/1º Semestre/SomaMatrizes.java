//ALuno: Hallan Christian Morais da Cruz
//Soma de Matriz
import java.util.Scanner;

public class SomaMatrizes {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Digite o número de linhas das matrizes: ");
        int linhas = sc.nextInt();

        System.out.print("Digite o número de colunas das matrizes: ");
        int colunas = sc.nextInt();

        int[][] matriz1 = new int[linhas][colunas];
        int[][] matriz2 = new int[linhas][colunas];
        int[][] resultado = new int[linhas][colunas];

        System.out.println("Digite os valores da primeira matriz:");
        preencherMatriz(matriz1, sc);

        System.out.println("Digite os valores da segunda matriz:");
        preencherMatriz(matriz2, sc);

        for (int i = 0; i < linhas; i++) {
            for (int j = 0; j < colunas; j++) {
                resultado[i][j] = matriz1[i][j] + matriz2[i][j];
            }
        }

        System.out.println("Matriz resultado da soma:");
        exibirMatriz(resultado);

        sc.close();
    }

    private static void preencherMatriz(int[][] matriz, Scanner sc) {
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[0].length; j++) {
                System.out.print("Digite o valor para a posição [" + (i + 1) + "][" + (j + 1) + "]: ");
                matriz[i][j] = sc.nextInt();
            }
        }
    }

    private static void exibirMatriz(int[][] matriz) {
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[0].length; j++) {
                System.out.print(matriz[i][j] + " ");
            }
            System.out.println();
        }
    }
}
