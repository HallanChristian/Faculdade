//Aluno: Hallan Christian Morais da Cruz
//Conversor de Temperatura
import java.util.Scanner;

public class ConversorTemperatura {
    private static double celsiusParaFahrenheit(double celsius) {
        return (celsius * 9 / 5) + 32;
    }

    private static double fahrenheitParaCelsius(double fahrenheit) {
        return (fahrenheit - 32) * 5 / 9;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Escolha a opção de conversão:");
        System.out.println("1. Celsius para Fahrenheit");
        System.out.println("2. Fahrenheit para Celsius");
        int escolha = sc.nextInt();

        System.out.print("Digite a temperatura: ");
        double temperatura = sc.nextDouble();

        if (escolha == 1) {
            double resultado = celsiusParaFahrenheit(temperatura);
            System.out.println("Resultado: " + resultado + " Fahrenheit");
        } else if (escolha == 2) {
            double resultado = fahrenheitParaCelsius(temperatura);
            System.out.println("Resultado: " + resultado + " Celsius");
        } else {
            System.out.println("Opção inválida");
        }

        sc.close();
    }

}