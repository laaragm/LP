{- 14) Dadas duas listas ordenadas de forma crescente, obter a lista ordenada resultante
	da intercalação	delas -}
-- Ex.: > intercalar [1,5,10] [2,7,9,20,25] -- [1,2,5,7,9,10,20,25]

-- define a função intercalar
{- os parâmetros de entrada são duas listas de inteiros e o de saída uma lista de
  inteiros -}
intercalar :: [Integer] -> [Integer] -> [Integer]
-- se uma das listas for vazia retorna a própria lista (ou se as duas forem vazias, 
-- retorna uma lista vazia)
intercalar [] z = z
intercalar z [] = z
intercalar [] [] = []
-- verifica se num1 é menor que num2 e, se for, colocamos num1 na lista1 e chamamos
-- a função intercalar recursivamente. Caso num1>num2, colocamos num2 na lista e
-- chamamos intercalar recursivamente mudando os parâmetros da chamada
intercalar (num1:lista1) (num2:lista2) 
    | num1<num2 = [num1] ++ intercalar lista1 (num2:lista2)
    | otherwise = [num2] ++ intercalar (num1:lista1) lista2

main = do print (intercalar [1,5,10] [2,7,9,20,25]) 