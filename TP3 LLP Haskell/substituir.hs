-- 3) substituir todos elementos de um determinado valor de uma lista de inteiros por um outro valor
-- Ex.: > substituir 1 0 [1,2,1,3,1] -- [0,2,0,3,0]

-- define a função substituir
substituir :: Integer -> Integer -> [Integer] -> [Integer]
-- se a lista passada for vazia, então o resultado também será uma lista vazia
substituir substituirEsse porEsse [] = [] 
-- dados os valores a serem trocados ("substituirEsse" por "porEsse"), comparamos "x" com "substituirEsse",
-- e, assim, se forem iguais, colocamos "porEsse" no lugar de "substituirEsse" e incrementamos a posição,
-- de modo a chamar a função novamente (substituir) e passar pro próximo da lista. Caso não sejam iguais, 
-- basicamente passamos pro próximo, de modo a fazer a mesma verificação se tem ou não que mudar na lista
substituir substituirEsse porEsse (x:y)
    | x == substituirEsse = [porEsse]++ substituir substituirEsse porEsse y
    | otherwise = [x]++ substituir substituirEsse porEsse y

-- main
main = do print (substituir 1 0 [1,2,1,3,1])