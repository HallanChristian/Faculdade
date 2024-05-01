/*
Aluno: Hallan Christian Morais da Cruz
Questão 01
*/
package app;

import java.util.Scanner;

public class EstadioFutebol {
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.print("Digite a capacidade do estádio: ");
		int capacidade = sc.nextInt();

		System.out.print("Digite a quantidade de pessoas: ");
		int quantidade = sc.nextInt();

		if (quantidade >= 0.8 * capacidade) {
			System.out.println("O estádio está lotado");
		} else if (quantidade >= 0.5 * capacidade) {
			System.out.println("O estádio está parcialmente lotado");
		} else if (quantidade < 0.5 * capacidade) {
			System.out.println("O estádio está quase vazio");
		} else if (quantidade <= 0.2 * capacidade) {
			System.out.println("O estádio está vazio");
		}
	}
}
