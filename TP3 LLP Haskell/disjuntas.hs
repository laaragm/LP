-- 8) Verificar se duas	listas são disjuntas (dois conjuntos são ditos disjuntos se não tiverem nenhum elemento em comum).
-- Ex.: > disjuntas [1,2,3] [5,4,6,0] -- True

-- define a função disjuntas
disjuntas :: [Integer] -> [Integer] -> Bool
-- se as duas listas forem vazias retorna False
disjuntas [] [] = False
-- se uma lista for vazia e a outra não retorna True
disjuntas [] lista2 = True
disjuntas lista1 [] = True
-- verifica a existência de elementos da lista1 na lista2. Caso 
-- esse elemento não esteja na lista2, chamamos recursivamente a função disjuntas 
-- passando fazer uma nova comparação
disjuntas (aux:lista1) lista2
    | verificaExistencia aux lista2 == True = False
    | otherwise = disjuntas lista1 lista2

-- define a função verificaExistencia
verificaExistencia :: Integer -> [Integer] -> Bool
verificaExistencia _ [] = False
-- se os números comparados forem iguais retorna True, caso contrário chama a função
-- novamente passando num1 e a lista para verificar a existência
verificaExistencia num1 (num2:lista)
    | num1 == num2 = True
    | otherwise = verificaExistencia num1 lista

main = do print (disjuntas [1,2,3] [5,4,6,0]) 