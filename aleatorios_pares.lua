print("Digite um número:")
local num = io.read("*n")

print("Tabuada do", num, ":")
for i = 1, 10 do
  print(num, "x", i, "=", num * i)
end

local tabela = {}
local pares = 0

for i = 1, 100 do
  tabela[i] = math.random(1, 100)
  if tabela[i] % 2 == 0 then
    pares = pares + 1
  end
end

print("Tabela de números aleatórios:")
for i, valor in ipairs(tabela) do
  print(i, ":", valor)
end

print("Total de números pares:", pares)