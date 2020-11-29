--q6
--Função	que	 retorna	uma	lista	com	a	 representação	em	binário	de	um
--número	inteiro.
 --Ex.: > binario 20
 --[1,0,1,0,0]

binario :: Int -> [Int]
binario 0 = []
binario num 
 | mod num 2 == 0 = binario (div num 2) ++ [0]
 | mod num 2 == 1 = binario (div num 2) ++ [1]   

main = do
print(binario(10))