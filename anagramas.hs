anagramas :: String -> [String] -> [String]
anagramas _ [] = []
anagramas palavraEntrada (possivelAnagrama:lista) =
    if palavraEntrada /= ordena possivelAnagrama
        then anagramas palavraEntrada (removePalavra possivelAnagrama lista)
        else possivelAnagrama : anagramas palavraEntrada lista

ordena [] = []
ordena [z] = [z]
ordena (z:esquerda) = menores ++ [z] ++ maiores
    where 
        maiores = ordena [elemento | elemento <- esquerda, elemento > z] 
        menores = ordena [elemento | elemento <- esquerda, elemento <= z]
    
removePalavra _ [] = []
removePalavra palavraParaRemover (palavra:listaDePalavras) =
    if palavraParaRemover == palavra
        then removePalavra palavraParaRemover listaDePalavras
        else palavra : removePalavra palavraParaRemover listaDePalavras
    
main = do print(anagramas "amor" ["arom", "uva", "moar", "omar", "peneira"])