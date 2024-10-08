module MyFunctions where
import System.Posix (DL(Null))

-- 1. Profissionais de saúde consideram que um indivíduo tem febre quando sua [temperatura corporal está acima de 37,8oC](https://drauziovarella.uol.com.br/doencas-e-sintomas/febre/). Escreva uma função `isFever :: Float -> Bool` que receba um valor de temperatura e retorne se o indivíduo tem febre ou não (atenção ao tipo do resultado!)

isFever :: Float -> Bool
isFever temp = if temp > 37.8 then True else False

  
-- main = do
--     let a = isFever (38)
--     putStrLn(show a)
--     print(show a)


-- 2. Escreva uma função `checkFever :: [Float] -> [Float]` que, dada uma lista de temperaturas de indivíduos, selecione aquelas que representam febre. Resolva esta questão usando a função definida no exercício anterior.

checkFever :: [Float] -> [Float]
checkFever x = filter (isFever) x

lista = [38, 37, 36, 39]
  
-- main = do
--     let a = checkFever (lista)
--     print(a)


-- 3. Escreva uma função `checkFever' :: [Float] -> [Float]` que resolva a questão anterior usando a sintaxe de função lambda (atenção ao apóstrofe no final do nome da função - em Haskell é comum usar isso para marcar diferentes versões de uma função).

checkFever' :: [Float] -> [Float]
checkFever' x = filter (isFever) x

-- 4. Crie uma função `itemize :: [String] -> [String]` que receba uma lista de strings e adicione tags HTML `<li>` e `</li>` antes e depois de cada string. Resolva esta questão usando lambda.

-- itemize :: [String] -> [String]
-- itemize list = map ("<li>" + list + "</li>")

-- 5. Escreva uma função `bigCircles :: Float -> [Float] -> [Float]` que receba um número e uma lista de raios de círculos. Essa função deverá retornar somente aqueles raios de círculos cuja área seja maior que o número passado como primeiro argumento. Resolva esta questão usando lambda.


-- 6. Escreva uma função `quarentine :: [(String,Float)] -> [(String,Float)]` que receba uma lista de tuplas com nomes de pessoas e suas temperaturas corpóreas, e selecione aquelas tuplas que correspondem a pessoas com febre.

-- quarentine :: [(String,Float)] -> [(String,Float)]
-- quarentine tuplas = filter (isFever) tuplas[1] 

tup = [("Carlos", 39), ("Joel", 32)]

-- main = do
--     let a = quarentine (tup)
--     print(a)

-- 7. Escreva uma função `agesIn :: [Int] -> Int -> [Int]` que receba uma lista de anos de nascimento de algumas pessoas e um ano de referência. Esta função deverá produzir uma lista com idades calculadas considerando o ano de referência (idades aproximadas, já que só consideram o ano, não a data completa de nascimento). Resolva esta questão usando lambda.

-- let agesIn = \[x] -> 2024 - x



-- epochs = [1999, 1985, 1967, 1953, 2024, 2010, 2013]

-- let ref = 2000
agesIn epochs ref = map (\x -> 
                case () of
                _ | ref > x -> Just (ref - x)
                _ | ref == x -> Just 0
                _ | ref < x -> Nothing
            ) epochs


-- 8. Escreva uma função `superNames :: [String] -> [String]` que receba uma lista de nomes e adicione o prefixo "Super " às strings que começarem com a letra `A` (maiúscula), deixando as demais inalteradas. A lista resultante, portanto, terá a mesma quantidade de strings da lista original.

main = do
    let names = ["alberto", "Argel", "rolim"]
    
        superNames names = map (\x -> if take 1 x == "A" then "Super " ++ x else x) names

    let a = superNames names

    print a

-- 9. Escreva uma função `onlyShorts :: [String] -> [String]` que receba uma lista de strings e retorne outra lista contendo somente as strings cujo tamanho seja menor que 5.

