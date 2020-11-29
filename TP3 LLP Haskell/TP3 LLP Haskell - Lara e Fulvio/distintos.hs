-- 7) Verificar	se todos os elementos de uma lista são distintos.
-- Ex.: > distintos [1,2,4,2,5] -- False ; > distintos [3,2,1] -- True
 
-- define a função verificaSeContem
verificaSeContem :: Integer -> [Integer] -> Bool
verificaSeContem num1 [] = False -- se a lista passada estiver vazia então retornamos False
-- verificamos se os números são iguais ou então chamamos verificaSeContem recursivamente
-- passando num1 e a lista
verificaSeContem num1 (num2:lista) = (num2 == num1) || verificaSeContem num1 lista

-- define a função distintos
distintos :: [Integer] -> Bool
distintos [] = True -- se a lista for vazia retornamos True
-- verificamos, utilizando a função auxiliar, verificaSeContem, se o número atual 
-- não está na lista e, chamamos recursivamente a função distintos passando a lista
distintos (numero:lista) = not(verificaSeContem numero lista) && distintos lista

main = do 
    print (distintos [1,2,4,2,5]) 
    print (distintos [3,2,1])