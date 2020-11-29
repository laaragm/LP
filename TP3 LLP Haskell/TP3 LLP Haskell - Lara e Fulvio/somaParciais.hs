-- 10) Calcular	todas as somas parciais	de uma lista de inteiros.
-- Ex.: > somaParciais [1,2,3,4] -- [1,1+2,1+2+3,1+2+3+4] -- [1, 3, 6, 10]

-- define a função remocao
remocao :: [Int] -> [Int]
-- se tiver apenas o elemento "elem" então o retorno será uma lista vazia
remocao [elem] = []
-- concatena o elemento à lista e chama a função recursivamente passando a nova lista
remocao (elem:lista) = [elem] ++ remocao lista

-- define a função soma
soma :: [Int] -> Int
-- se a lista estiver vazia a soma é 0
soma [] = 0
-- soma o anterior mais o cálculo dos elementos da lista
soma (anterior:lista) = anterior + soma lista

-- define a função somaParciais
somaParciais :: [Int] -> [Int]
-- se a lista for vazia então a soma parcial será uma lista vazia
somaParciais [] = []
-- se a lista tiver apenas um elemento então a soma parcial será o próprio elemento
somaParciais [elem] = [elem]
-- chama a função recursivamente passando a nova lista obtida a partir da função
-- auxiliar remocao e concatena essa lista cos elementos obtidos a partir da 
-- outra função auxiliar responsável pela soma
somaParciais lista = (somaParciais (remocao lista)) ++ [(soma lista)]

main = do print(somaParciais [1,2,3,4]) 