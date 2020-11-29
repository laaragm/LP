  
-- 2) Calcular o somatório dos elementos ímpares de	uma	lista de inteiros.
--Ex.: > somaImpares [1,3,2,7,4,6,5] -- 16=1+3+7+5

-- define a função somaImpares
-- o parâmetro de entrada é uma lista de inteiros e o de saída é um inteiro
somaImpares :: [Integer] -> Integer
somaImpares [] = 0 
somaImpares (x:y) = if mod x 2 /= 0 then x + somaImpares(y) else somaImpares(y)

-- main
main = do print (somaImpares[1,2,3,5,7])