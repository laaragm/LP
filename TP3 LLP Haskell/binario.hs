-- 6) Função que retorna uma lista com a representação em binário de um número inteiro.
-- Ex.: > binario 20 -- [1,0,1,0,0]

-- define a função binario
binario :: Integer -> [Integer]
binario 0 = []
-- se o resto da divisão do número por 2 for igual a 1, chamamos a função binario
-- passando o número dividido por 2 e concatenamos à lista o número 1. Caso contrário,
-- se o número for divisível por 2 colocamos 0 na lista
binario numero = if (numero `mod` 2 == 1) then (binario (numero `div` 2)) ++ [1]
    else (binario (numero `div` 2)) ++ [0]

main = do print (binario 20) 