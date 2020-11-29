--13) Remover os n últimos elementos de	uma lista de inteiros.
-- Ex.: > removerFim 2 [1,2,3,4,5,6] -- n=2 -- [1,2,3,4]

-- define a função removendo
{- o parâmetro de entrada é uma listas de inteiros e o de saída uma lista de inteiros -}
removendo:: [Integer] -> [Integer]
-- se a lista tiver apenas um elemento então retornamos uma lista vazia
removendo [elem] = []
-- o elemento é concatenado à lista
removendo (elem:lista) = [elem] ++ removendo lista

-- define a função removerFim
{- os parâmetros de entrada são um inteiro e uma listas de inteiros. O o de saída 
  uma lista de inteiros -}
removerFim:: Integer -> [Integer] -> [Integer] 
-- se a lista de entrada for vazia retorna uma lista vazia
removerFim _ [] = [] 
-- se n for 0 retornamos a própria lista pois não precisaremos de remover nenhum elemento
removerFim 0 lista = lista 
-- chamamos recursivamente a função removerFim reduzindo o número de elementos a serem 
-- retirados da lista e passando a lista tratada depois de passar pela função auxiliar
-- removendo para esta seja devidamente atualizada
removerFim num lista = (removerFim (num-1) (removendo lista))

main = do print (removerFim 2 [1,2,3,4,5,6])