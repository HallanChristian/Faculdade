//ALuno: Hallan Christian Morais da Cruz
//Substituir Elementos Pares e Impares
import java.util.Scanner;

public class SubstituirElementos {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[][] matriz = new int[3][3];

        System.out.println("Digite os valores da matriz 3x3:");

        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print("Digite o valor para a posição [" + (i + 1) + "][" + (j + 1) + "]: ");
                matriz[i][j] = sc.nextInt();
            }
        }

        System.out.println("\nMatriz Original:");
        exibirMatriz(matriz);

        substituirElementos(matriz);

        System.out.println("\nMatriz Após Substituição:");
        exibirMatriz(matriz);

        sc.close();
    }

    private static void substituirElementos(int[][] matriz) {
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[0].length; j++) {
                if (matriz[i][j] % 2 == 0) {
                    matriz[i][j] = 0;
                } else {
                    matriz[i][j] = 1;
                }
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
