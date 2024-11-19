lista :: [Int]
lista = [30,29..1]

--exercicio 1
multiplica :: [Int]
multiplica = map (*3) lista

ultimoElemento :: Int
ultimoElemento = head (reverse multiplica)

--exercicio 2 
fatorial :: Int -> Int
fatorial n
    | n > 0     = product [1..n]
    | otherwise = n * 2


main :: IO ()
main = do
    print multiplica
    print ultimoElemento
    
    print (fatorial 5)  
    print (fatorial 0)  
