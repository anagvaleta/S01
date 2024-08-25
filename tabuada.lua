print("Digite um número:")
local num = io.read("*n")

print("Tabuada do", num, ":")
for i = 1, 10 do
  print(num, "x", i, "=", num * i)
end