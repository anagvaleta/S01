using System;

public class Cachorro
{
    public string Nome { get; set; }
    public int Idade { get; set; }

 public Cachorro(string nome, int idade)
    {
        Nome = nome;
        Idade = idade;
    }

    public void mostraNome()
    {
        Console.WriteLine($"O nome do cachorro é: {Nome}");
    }

    public void showIdade()
    {
        Console.WriteLine($"A idade do cachorro é: {Idade}");
    }
}

public class CachorroGrande : Cachorro
{
    private int Tamanho { get; set; }

    public CachorroGrande(string nome, int idade, int tamanho) : base(nome, idade)
    {
        Tamanho = tamanho;
    }

    public new void showIdade()
    {
        Console.WriteLine($"O cachorro grande {Nome} tem {Idade} anos e {Tamanho} cm de altura.");
    }
}

public class CachorroPequeno : Cachorro
{
    public CachorroPequeno(string nome, int idade) : base(nome, idade)
    {
    }

    public new void showIdade()
    {
        Console.WriteLine($"O cachorro pequeno {Nome} tem {Idade} anos.");
    }
}

public class catioros
{
    static void Main(string[] args)
    {
        Cachorro cachorro = new Cachorro("Teka", 15);
        cachorro.mostraNome();
        cachorro.showIdade();

        CachorroGrande cachorroGrande = new CachorroGrande("Capitu", 6, 20);
        cachorroGrande.mostraNome();
        cachorroGrande.showIdade();

        CachorroPequeno cachorroPequeno = new CachorroPequeno("Kitty", 16);
        cachorroPequeno.mostraNome();
        cachorroPequeno.showIdade();

        Console.ReadKey();
    }
}