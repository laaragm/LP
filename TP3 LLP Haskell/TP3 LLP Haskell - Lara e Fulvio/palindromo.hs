-- 9) Verificar se uma	lista de inteiros é palíndromo (sequência de unidades que tenha a propriedade de poder ser lida tanto da direita para a esquerda como da esquerda para a direita).
-- Ex.: > palindromo [1,2,3,4,3,2,1] -- True

-- define a função palindromo
inversao :: [Integer] -> [Integer]
-- se a lista passada for vazia, o retorno também será uma lista vazia
inversao [] = []
-- concatena o número à lista e chama a função recursivamente até que todos já estejam na lista
inversao (num:lista) = inversao lista ++ [num]

-- define a função palindromo
palindromo :: [Integer] -> Bool
-- se a lista passada for vazia, o retorno será False pois não é um palíndromo
palindromo [] = False
-- verifica se o retorno da inversão é igual à lista passada na entrada e, se for, é um palíndromo
palindromo numeros = (numeros == inversao numeros)

main = do print (palindromo [1,2,3,4,3,2,1]) 