{- 15) Desenvolver uma solução para um quiosque de saque eletrônico que,	
  para um determinado valor, deve entregar o menor número de cédulas	
  de R$1, R$5, R$10, R$50 e R$100, da menor para a maior. -}
-- Ex.: > trocar 162 -- [1, 1, 10, 50, 100]

-- define a função trocar
-- o parâmetro de entrada é um inteiro e o de saída uma lista de inteiros
trocar :: Integer -> [Integer]
{- diminui do valor recebido a maior nota possível e 'anota' na lista o valor diminuido
  até que chegue em 0. -}
trocar valor
  | valor >= 100 = trocar (valor-100) ++ [100]
  | valor >= 50 = trocar (valor-50) ++ [50]
  | valor >= 10 = trocar (valor-10) ++ [10]
  | valor >= 1 = trocar (valor-1) ++ [1]
  | otherwise = []

main = do print (trocar 162)