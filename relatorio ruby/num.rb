#entrada e converter a entrada em um número inteiro
puts "Digite o primeiro número:"
num1 = gets.chomp.to_i 

puts "Digite o segundo número:"
num2 = gets.chomp.to_i 

puts "Digite o terceiro número:"
num3 = gets.chomp.to_i 

#fazer media
puts "A média dos três números é: #{(num1 + num2 + num3) / 3}"