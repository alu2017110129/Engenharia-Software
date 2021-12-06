package view;

import controller.AlunoController;
import io.cucumber.java.bs.A;
import jdk.nashorn.internal.ir.CatchNode;
import model.Aluno;
import repository.AlunoRepository;
import repository.ChaveExisteException;
import repository.ChaveInexisteException;

import java.util.List;

public class AlunoView {

    public static void listaAlunos(Aluno aluno) {
        System.out.println(aluno.getMatricula() + " - " + aluno.getNome() + "(" + aluno.getFones().get(0) + "\n");
    }

    public static void listaAlunos(List<Aluno> lista) {
        for (Aluno al : lista) {
            listaAlunos(al);
        }
    }

    public static void incluirAluno() {

        AlunoController controller = new AlunoController();
        controller.createAluno("Antônio Junior", 123456, 51, "999999999", 'R');
        controller.createAluno("Henrique Oliveira", 23656, 51, "999999999", 'R');
        controller.createAluno("João Luis Facco Silva", 2017110129, 51, "998601789", 'R');
        controller.createAluno("Rafael Ribeiro", 1234567, 51, "999999999", 'R');
        controller.createAluno("Pedro Alves", 987654, 51, "9999988888", 'R');
    }

    public static void listarAlunos() {
        AlunoController controller = new AlunoController();
        controller.listaAlunos();
    }

    public static void alterarAluno(long matricula) {
        AlunoRepository aluno = new AlunoRepository();

//        listaAlunos(aluno.buscaAlunoMatricula(matricula));
        System.out.println(aluno);
    }

    public static void excluirAluno(long matricula) {
        AlunoRepository.getInstance().deleteAluno(matricula);
    }
}
