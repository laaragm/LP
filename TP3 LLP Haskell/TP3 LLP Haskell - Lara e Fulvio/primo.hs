-- 4) Verificar se um número é primo.
-- Ex.: > primo 17 -- True ; > primo 0 -- False  

-- define a função analisaDivisor
primo :: Integer -> Bool
-- analisa os divisores do número passado na entrada, se o tamanho da lista retornada
-- for igual a 2, então o número é primo, caso contrário não é primo
primo numero = if (length(analisaDivisor numero numero []) == 2) then True else False

-- define a função analisaDivisor
analisaDivisor :: Integer -> Integer -> [Integer] -> [Integer]
-- se o divisor for 0, então basicamente retornamos a lista
analisaDivisor 0 numero lista = lista
-- se o módulo da divisão for diferente de zero, analisamos o divisor antecedente
analisaDivisor divisor numero lista =
    if (numero `mod` divisor /= 0) then analisaDivisor (divisor-1) numero lista
    else [divisor]++ (analisaDivisor (divisor-1) numero lista)

main = do 
    putStrLn ("Verifica se cada número abaixo é primo")
    putStr ("17: ")
    print (primo 17)
    putStr ("0: ") 
    print (primo 0) 