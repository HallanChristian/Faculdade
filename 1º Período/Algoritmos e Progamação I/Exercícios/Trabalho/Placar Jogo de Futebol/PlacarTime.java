/*
Aluno: Hallan Christian Morais da Cruz

Questão 03
Crie um programa em Java que compare o desempenho de dois times em uma competição. 
O programa solicita ao usuário que insira o nome dos dois times, o número de vitórias 
e o número de empates de cada time. Em seguida, o programa calcula os pontos de cada time, 
onde cada vitória vale 3 pontos e cada empate vale 1 ponto. Após o cálculo, o programa 
determina qual time tem mais pontos ou se os dois times estão empatados, e então mostra 
essa informação ao usuário.
*/

package app;

import java.util.Scanner;

public class PlacarTime {
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.printf("Digite o nome do 1º time: ");
		String time1 = sc.nextLine();

		System.out.printf("Digite o nome do 2º time : ");
		String time2 = sc.nextLine();

		System.out.print("Digite o número de vitórias do " + time1 + ": ");
		int A = sc.nextInt();

		System.out.print("Digite o número de vitórias do " + time2 + ": ");
		int B = sc.nextInt();

		System.out.print("Digite o número de empates do " + time1 + ": ");
		int A1 = sc.nextInt();

		System.out.print("Digite o número de empates do " + time2 + ": ");
		int B2 = sc.nextInt();

		if (A * 3 + A1 > B * 3 + B2) {
			System.out.println("O time " + time1 + " está com mais pontos que o time " + time2);
		}

		else if (A * 3 + A1 < B * 3 + B2) {
			System.out.println("O time " + time2 + " está com mais pontos que o time " + time1);
		}

		else {
			System.out.println("Os dois times estão empatados");
		}
	}
}
