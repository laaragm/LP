-- 11) Linearizar uma	lista	de listas	de inteiros.
-- Ex.: > linearizar [ [1,2], [5], [0,4,2] ] -- [1,2,5,0,4,2]

-- define a função linearizar
-- a entrada é uma lista de listas de inteiros e a saída é uma lista de inteiros
linearizar :: [[Integer]] -> [Integer]
-- se a lista for vazia retorna uma lista vazia
linearizar [] = []
-- chama recursivamente a função linearizar concatenando cada número à lista
linearizar (numero:lista) = numero ++ linearizar lista

main = do print (linearizar [[1,2], [5], [0,4,2]])