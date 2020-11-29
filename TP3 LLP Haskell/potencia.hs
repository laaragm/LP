-- 1) Defina uma função recursiva para o cálculo de potência de dois números	
--inteiros, onde o primeiro número é elevado ao segundo.
-- Ex.: > potencia 2 3 -- 8=2*2*2

-- calcula a potência
potencia :: Integer -> Integer -> Integer -- declaração da função potencia
potencia a 0 = 1 -- um número qualquer elevado a 0 é 1 
potencia a b = a * potencia a (b-1) -- "a" elevado a "b" é "a" vezes a potência de "a" e "b-1" 

-- main 
main = do print (potencia 2 3) -- chama a função potencia