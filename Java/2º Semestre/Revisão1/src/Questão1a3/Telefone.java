package Questão1a3;
import java.util.Scanner;

public class Telefone {
    private String numero;

    // Construtor
    public Telefone() {
        obterNumero();
    }

    // Método para obter número de telefone do usuário
    private void obterNumero() {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o número de telefone: ");
        this.numero = scanner.nextLine();
    }

    // Método de acesso (getter e setter)
    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }
}

