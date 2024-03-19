import java.util.Scanner;

public class Main {

    private static double[] historicoOperacao = new double[5];
    private static int Historico = 0;

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        while (true) {
            System.out.println("Escolha a calculadora:");
            System.out.println("1. Calculadora Científica");
            System.out.println("2. Calculadora Estatística");
            System.out.println("3. Sair");

            int escolha = sc.nextInt();

            switch (escolha) {
                case 1:
                    Cientifica();
                    break;
                case 2:
                    Estatistica();
                    break;
                case 3:
                    System.out.println("Flw meu nengue!");
                    System.exit(0);
                default:
                    System.out.println("Opção inválida!");
            }
        }
    }

    private static void Cientifica() {
        Scanner sc = new Scanner(System.in);
        double resultado = 0;

        while (true) {
            System.out.println("Operação:");
            System.out.println("1. Adição");
            System.out.println("2. Subtração");
            System.out.println("3. Multiplicação");
            System.out.println("4. Divisão");
            System.out.println("5. Fatorial");
            System.out.println("6. Exponenciação");
            System.out.println("7. Porcentagem");
            System.out.println("8. Voltar para o Início");
            System.out.println("9. Consultar histórico");
            System.out.println("10. Limpar memória");

            int escolha = sc.nextInt();

            switch (escolha) {
                case 1:
                    System.out.println("Digite o valor para somar:");
                    double x = sc.nextDouble();
                    resultado += x;
                    break;
                case 2:
                    System.out.println("Digite o valor para subtrair:");
                    x = sc.nextDouble();
                    resultado -= x;
                    break;
                case 3:
                    System.out.println("Digite o valor para multiplicar:");
                    x = sc.nextDouble();
                    resultado *= x;
                    break;
                case 4:
                    System.out.println("Digite o valor para dividir:");
                    x = sc.nextDouble();
                    resultado /= x;
                    if (x == 0) {
                        System.out.println("Erro! É impossível dividir por zero.");
                        return;
                    }
                    break;
                case 5:
                    System.out.println("Digite o valor para calcular o fatorial:");
                    int n = sc.nextInt();
                    resultado = calcularFatorial(n);
                    break;
                case 6:
                    System.out.println("Digite o valor da base:");
                    double base = sc.nextDouble();
                    System.out.println("Digite o valor do expoente:");
                    double expoente = sc.nextDouble();
                    resultado = Math.pow(base, expoente);
                    break;
                case 7:
                    System.out.println("Digite o valor total:");
                    double total = sc.nextDouble();
                    System.out.println("Digite a porcentagem para calcular:");
                    double percentual = sc.nextDouble();
                    resultado = (percentual / 100) * total;
                    break;
                case 8:
                    return;
                default:
                    System.out.println("Opção inválida!");
                case 9:
                    consultarHistorico();
                    break;
                case 10:
                    limparMemoria();
                    break;
            }

            // Armazenar o resultado no histórico
            historicoOperacao[Historico] = resultado;
            Historico = (Historico + 1) % 5;

            System.out.println("Resultado atual: " + resultado);
        }
    }

    private static void consultarHistorico() {
        System.out.println("Histórico de operações:");

        for (int i = 0; i < 5; i++) {
            int indice = (Historico - i - 1 + 5) % 5;
            System.out.println((i + 1) + ": " + historicoOperacao[indice]);
        }
    }

    private static void limparMemoria() {
        historicoOperacao = new double[5];
        Historico = 0;
        System.out.println("Memória limpa.");
    }

    private static void Estatistica() {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite a quantidade de números:");
        int tamanho = sc.nextInt();

        if (tamanho <= 0) {
            System.out.println("eRRO. Tamanho inválido.");
            return;
        }

        double[] numeros = new double[tamanho];

        for (int i = 0; i < tamanho; i++) {
            System.out.println("Digite o número " + (i + 1) + ":");
            numeros[i] = sc.nextDouble();
        }

        double[] estatisticas = calcularEstatisticas(numeros);

        System.out.println("Média: " + estatisticas[0]);
        System.out.println("Maior número: " + estatisticas[1]);
        System.out.println("Menor número: " + estatisticas[2]);
        System.out.println("Número de elementos: " + estatisticas[3]);
    }

    private static double[] calcularEstatisticas(double[] numeros) {
        double soma = 0;
        double maior = Double.MIN_VALUE;
        double menor = Double.MAX_VALUE;

        for (double numero : numeros) {
            soma += numero;

            if (numero > maior) {
                maior = numero;
            }

            if (numero < menor) {
                menor = numero;
            }
        }

        double media = soma / numeros.length;
        int numeroElementos = numeros.length;

        return new double[]{media, maior, menor, numeroElementos};
    }

    private static double calcularFatorial(int n) {
        if (n == 0 || n == 1) {
            return 1;
        } else {
            return n * calcularFatorial(n - 1);
        }
    }
}