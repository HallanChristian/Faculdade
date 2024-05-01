/*
Aluno: Hallan Christian Morais da Cruz

Questão 01
Faça um programa em Java que diga se um estádio está lotado, parcialmente lotado, quase vazio ou 
vazio com base na quantidade de pessoas presentes e na capacidade total do estádio. 

Se a quantidade de pessoas for:

80% ou mais da capacidade, o estádio está lotado.
Entre 50% e 79% da capacidade, o estádio está parcialmente lotado.
Menos que 50% da capacidade, o estádio está quase vazio.
20% ou menos da capacidade, o estádio está vazio.
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
