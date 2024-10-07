class Carro
  def initialize(modelo, ano)
    @modelo = modelo
    @ano = ano
  end

  def descrever
    "Este é um carro #{@modelo} do ano #{@ano}."
  end
end

#herda de carro
class CarroEsportivo < Carro
  def initialize(modelo, ano, potencia) 
    super(modelo, ano)
  end

  def descrever
    super
  end
end

#herda de carro
class CarroSedan < Carro
  def initialize(modelo, ano, capacidade)
    super(modelo, ano)
  end

  def descrever
    super
  end
end

#instanciando as classes
carro_popular = Carro.new("Mini Cooper", 2023)
carro_esportivo = CarroEsportivo.new("Ferrari", 2024, 700)
carro_sedan = CarroSedan.new("Honda Civic", 2022, 5)

#chamando o metodo
puts carro_popular.descrever
puts carro_esportivo.descrever
puts carro_sedan.descrever