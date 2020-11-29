-- 5) Verifique se um número é perfeito, isto é, é igual a soma de seus divisores	(exceto	o próprio número).
-- Ex.: > perfeito 28 -- 28=1+2+4+7+14 -- True

-- define a função analisaDivisor
analisaDivisor :: Integer -> Integer -> [Integer] -> [Integer]
-- se o divisor for 0, então basicamente retornamos a lista
analisaDivisor 0 numero lista = lista
-- se o módulo da divisão for diferente de zero, analisamos o divisor antecedente
analisaDivisor divisor numero lista =
    if (numero `mod` divisor /= 0) then analisaDivisor (divisor-1) numero lista
    else [divisor]++ (analisaDivisor (divisor-1) numero lista)

-- define a função soma
soma :: [Integer] -> Integer
soma [] = 0 -- se a lista passada for vazia, a soma é 0
soma (somaAnterior:atual) = somaAnterior+soma atual -- acrescenta à soma o valor do divisor

-- define a função perfeito
perfeito :: Integer -> Bool
perfeito numero = if (soma(analisaDivisor numero numero [])-numero == numero) 
    then True
    else False

main = do print (perfeito 28) 