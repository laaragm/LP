-- 12) Deslocar todos	elementos	de uma lista de	inteiros k posições para a esquerda.
-- Ex.: > shift 3 [1,5,6,7,3,4,1] -- k=3 -- [7,3,4,1,1,5,6] 

-- define a função auxiliaDeslocamento
{- os parâmetros de entrada é uma lista de inteiros e o de saída também -}
auxiliaDeslocamento :: [Integer] -> [Integer] 
-- se a lista for vazia retorna uma lista vazia
auxiliaDeslocamento [] = []
-- para cada elemento da lista desloca o número para a posição auxiliar da lista
-- referente ao deslocamento de k posições à esquerda
auxiliaDeslocamento (numero:lista) = [ aux | aux <- lista ] ++ [numero]

-- define a função shift
{- os parâmetros de entrada são um inteiro e uma listas de inteiros. O de saída 
  uma lista de inteiros-}
shift :: Integer -> [Integer] -> [Integer]
-- se o número do deslocamento for 0 retorna a lista
shift 0 lista = lista
-- chama recursivamente a função deslocamento sempre decrementando o número do deslocamento
-- ("k") e passando a lista para a função auxiliar "auxiliaDeslocamento"
shift k lista = shift (k-1) (auxiliaDeslocamento lista)

main = do print (shift 3 [1,5,6,7,3,4,1])