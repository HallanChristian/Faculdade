package app;

//Aluno: Hallan Christian Morais da Cruz
//Calculadora

import java.util.Scanner;

public class Calculadora {
	public static double soma(double x, double y) {
		return x + y;
	}

	public static double sub(double x, double y) {
		return x - y;
	}

	public static double mult(double x, double y) {
		return x * y;
	}

	public static double div(double x, double y) {
		return x / y;
	}

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		double resultado, y;
		String operacao;
		
		System.out.println("Digite um número: ");
		double x = sc.nextDouble();
		
		do {
			System.out.println("Digite uma operação |+|-|/|*| ou |s| para sair: ");
			operacao = sc.next();
			switch (operacao) {
			
			case "+":
				System.out.println("Digite outro número: ");
				y = sc.nextDouble();
				resultado = soma(x, y);
				x = resultado;
				System.out.println("Resultado: " + resultado);
				break;
				
			case "-":
				System.out.println("Digite outro número: ");
				y = sc.nextDouble();
				resultado = sub(x, y);
				x = resultado;
				System.out.println("Resultado: " + resultado);
				break;
				
			case "*":
				System.out.println("Digite outro número: ");
				y = sc.nextDouble();
				resultado = mult(x, y);
				x = resultado;
				System.out.println("Resultado: " + resultado);
				break;
				
			case "/":
				System.out.println("Digite outro número: ");
				y = sc.nextDouble();
				resultado = div(x, y);
				x = resultado;
				System.out.println("Resultado: " + resultado);
				break;
				
			case "s":
				break;
				
			default:
				System.out.print("Operação Invalida");
				break;
			}
		} while (!operacao.equals("s"));
		sc.close();
	}
}
