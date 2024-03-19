import java.util.Scanner;

public class ConversorDeUnidades {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        while (true) {
            exibirMenu();
            int escolha = scanner.nextInt();

            if (escolha == 0) {
                System.out.println("Encerrando o programa.");
                break;
            }

            realizarConversao(escolha);
        }

        scanner.close();
    }

    public static void exibirMenu() {
        System.out.println("Escolha uma opção:");
        System.out.println("1. Metros para Pés");
        System.out.println("2. Pés para Metros");
        System.out.println("3. Litros para Galões");
        System.out.println("4. Galões para Litros");
        System.out.println("0. Sair");
    }

    public static void realizarConversao(int escolha) {
        Scanner scanner = new Scanner(System.in);

        switch (escolha) {
            case 1:
                System.out.println("Digite a quantidade em metros:");
                double metrosParaConverter = scanner.nextDouble();
                double resultadoPes = metrosParaPes(metrosParaConverter);
                System.out.println(metrosParaConverter + " metros é igual a " + resultadoPes + " pés.");
                break;

            case 2:
                System.out.println("Digite a quantidade em pés:");
                double pesParaConverter = scanner.nextDouble();
                double resultadoMetros = pesParaMetros(pesParaConverter);
                System.out.println(pesParaConverter + " pés é igual a " + resultadoMetros + " metros.");
                break;

            case 3:
                System.out.println("Digite a quantidade em litros:");
                double litrosParaConverter = scanner.nextDouble();
                double resultadoGaloes = litrosParaGaloes(litrosParaConverter);
                System.out.println(litrosParaConverter + " litros é igual a " + resultadoGaloes + " galões.");
                break;

            case 4:
                System.out.println("Digite a quantidade em galões:");
                double galoesParaConverter = scanner.nextDouble();
                double resultadoLitros = galoesParaLitros(galoesParaConverter);
                System.out.println(galoesParaConverter + " galões é igual a " + resultadoLitros + " litros.");
                break;

            default:
                System.out.println("Opção inválida. Tente novamente.");
        }

        System.out.println();
    }

    public static double metrosParaPes(double metros) {
        return metros * 3.28084;
    }

    public static double pesParaMetros(double pes) {
        return pes / 3.28084;
    }

    public static double litrosParaGaloes(double litros) {
        return litros * 0.264172;
    }

    public static double galoesParaLitros(double galoes) {
        return galoes / 0.264172;
    }
}
