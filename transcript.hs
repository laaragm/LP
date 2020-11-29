transcript :: String -> String
transcript "" = ""
transcript (nucleotide:dna) = convertToRNA nucleotide : transcript dna 

convertToRNA 'G' = 'C' 
convertToRNA 'C' = 'G' 
convertToRNA 'T' = 'A' 
convertToRNA 'A' = 'U' 
convertToRNA other = other

main = do print(transcript "GAGCCTACTAACGGGAT")
