package Questão1a3;

public class Main {
    public static void main(String[] args) {
        // Criação do vetor de Alunos com tamanho 10
        Aluno[] alunos = new Aluno[10];

        // Loop para preencher o vetor
        for (int i = 0; i < alunos.length; i++) {
            alunos[i] = lerAluno(); // Utilizando a função lerAluno() para preencher o vetor
            alunos[i].setTelefone(lerTelefone()); // Utilizando a função lerTelefone() para preencher o telefone do aluno
        }

        // Utilizando a função imprimir para mostrar os dados do vetor
        imprimir(alunos);
    }

    // Função para ler dados de um aluno e retornar um objeto Aluno
    public static Aluno lerAluno() {
        System.out.println("Informe os dados do Aluno:");
        return new Aluno();
    }

    // Função para ler dados de um telefone e retornar um objeto Telefone
    public static Telefone lerTelefone() {
        System.out.println("Informe os dados do Telefone:");
        return new Telefone();
    }

    // Função para imprimir os dados do vetor de alunos
    public static void imprimir(Aluno[] vetAluno) {
        System.out.println("\nDados dos Alunos:");
        for (Aluno aluno : vetAluno) {
            System.out.println("Nome: " + aluno.getNome());
            System.out.println("Matrícula: " + aluno.getMatricula());
            System.out.println("Idade: " + aluno.getIdade());
            System.out.println("Telefone: " + aluno.getTelefone().getNumero());
            System.out.println();
        }
    }
}
