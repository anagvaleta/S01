#include <iostream>
#include <string>

using namespace std;

// Classe Pessoa
class Pessoa {
public:
  string nome;
  int idade;
  Pessoa(string nome, int idade) : nome(nome), idade(idade) {}

  void imprimirNome() {
    cout << "O nome e: " << nome << endl;
  }
};

// Classe Professor
class Professor : public Pessoa {
public:
  Professor(string nome, int idade) : Pessoa(nome, idade) {}

  void imprimirIdade() {
    cout << "O professor " << nome << " tem " << idade << " anos." << endl;
  }
};

// Classe Aluno
class Aluno : public Pessoa {
private:
  int matricula;

public:
  Aluno(string nome, int idade, int matricula)
      : Pessoa(nome, idade), matricula(matricula) {}

  void imprimirIdade() {
    cout << "O aluno " << nome << " tem " << idade << " anos." << endl;
  }

  int getMatricula() {
    return matricula;
  }
};

int main() {
  // Objetos das classes
  Aluno aluno("Ana Luísa", 21, 12345);
  Professor professor("Magda", 45);
  Pessoa pessoa("Leonardo", 47);

  // Imprime métodos e atributos
  cout << "Aluno: " << endl;
  aluno.imprimirNome();
  aluno.imprimirIdade();
  cout << "Matricula: " << aluno.getMatricula() << endl;

  cout << "\nProfessor: " << endl;
  professor.imprimirNome();
  professor.imprimirIdade();

  cout << "\nPessoa: " << endl;
  pessoa.imprimirNome();
  cout << "Idade: " << pessoa.idade << endl;

  return 0;
}