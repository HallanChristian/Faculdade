/*
Aluno: Hallan Christian Morais da Cruz
Questão 03
*/
package app;

import java.util.Scanner; 

public class Main
{
	public static void main(String[] args) {
	    
	    Scanner sc = new Scanner (System.in);
		
		System.out.printf("Digite o nome do time 1: ");
		String time1 = sc.nextLine();
		
		System.out.printf("Digite o valor do 2º lado: ");
		String time2 = sc.nextLine();
		
		System.out.print("Digite o número de vitórias do "+time1+": ");
		int A = sc.nextInt();
		
		System.out.print("Digite o número de vitórias do "+time2+": ");
		int B = sc.nextInt();
		
		System.out.print("Digite o número de empates do "+time1+": ");
		int A1 = sc.nextInt();
		
		System.out.print("Digite o número de empates do "+time2+": ");
		int B2 = sc.nextInt();
		
        if (A*3 + A1 > B*3 + B2) {
            System.out.println("O time "+time1+" está com mais pontos que o time "+time2);
        }
        
        else if (A*3 + A1 < B*3 + B2)  {
            System.out.println("O time "+time2+" está com mais pontos que o time "+time1);
        }
        
        else {
            System.out.println("Os dois times estão empatados");
        }
	}
}

