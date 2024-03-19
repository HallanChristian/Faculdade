//ALuno: Hallan Christian Morais da Cruz
//Soma da Diagonal Principal de uma Matriz
import java.util.Scanner;

public class SomaDiagonalPrincipal {
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

        int somaDiagonalPrincipal = 0;

        for (int i = 0; i < 3; i++) {
            somaDiagonalPrincipal += matriz[i][i];
        }

        System.out.println("A soma dos elementos da diagonal principal é: " + somaDiagonalPrincipal);

        sc.close();
    }
}
