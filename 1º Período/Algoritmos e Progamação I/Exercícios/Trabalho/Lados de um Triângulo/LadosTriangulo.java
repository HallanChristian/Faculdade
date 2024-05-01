/*
Aluno: Hallan Christian Morais da Cruz

Questão 02
Escreva um programa em Java que verifique se três valores podem ser os lados de um triângulo válido. 
O programa solicita ao usuário que insira os valores dos três lados do triângulo e, em seguida, 
determina se é possível formar um triângulo com esses valores.
*/

package app;

import java.util.Scanner;

public class LadosTriangulo {
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.print("Digite o valor do 1º lado: ");
		double lado1 = sc.nextDouble();

		System.out.print("Digite o valor do 2º lado: ");
		double lado2 = sc.nextDouble();

		System.out.print("Digite o valor do 3º lado: ");
		double lado3 = sc.nextDouble();

		if (lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1) {
			System.out.println("O triângulo é valido");
		}

		else {
			System.out.println("O triângulo não é valido");
		}
	}
}
