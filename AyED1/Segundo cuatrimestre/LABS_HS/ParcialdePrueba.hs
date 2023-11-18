--Ejercicio 2.a

data MarcaMicro  = Intel | AMD
data Nucleos     = DualCore | QuadCore | HexaCore | OctaCore
type MaxFrec     = Float

data MarcaRAM    = Kingston | Markvision | Patriot 
type Gigas       = Int

data MarcaPMadre = Asus | Asrock | MSI
data Chipset     = A630 | B650 | B660 | B760

data ComponentePC = Micro MarcaMicro Nucleos MaxFrec | RAM MarcaRAM Gigas | PlacaMadre MarcaPMadre Chipset

--Ejercicio 2.b

cuantosMicros :: [ComponentePC] -> MarcaMicro -> Int
cuantosMicros [] _ = 0
cuantosMicros ((Micro Intel _ _):xs) Intel = 1 + cuantosMicros xs Intel
cuantosMicros ((Micro AMD _ _):xs) AMD     = 1 + cuantosMicros xs AMD
cuantosMicros (_:xs) m                 = cuantosMicros xs m

--cuantosMicros [Micro AMD DualCore 2.5, RAM Patriot 2, Micro Intel HexaCore 4.2, PlacaMadre Asus B650, Micro Intel DualCore 3.7 ] Intel

mismoNucleos :: Nucleos -> Nucleos -> Bool
mismoNucleos DualCore DualCore = True
mismoNucleos QuadCore QuadCore = True
mismoNucleos HexaCore HexaCore = True
mismoNucleos OctaCore OctaCore = True
mismoNucleos _ _ = False

mismoChipset :: Chipset -> Chipset -> Bool
mismoChipset A630 A630 = True
mismoChipset B650 B650 = True
mismoChipset B660 B660 = True
mismoChipset B760 B760 = True
mismoChipset _ _ = False

instance Eq ComponentePC 
    where
        Micro _ n1 _ == Micro _ n2 _ = mismoNucleos n1 n2
        RAM _ g1 == RAM _ g2 = g1 == g2
        PlacaMadre _ c1 == PlacaMadre _ c2 = mismoChipset c1 c2
        _ == _ = False

--Ejercicio 3 
type Rank = Int
type Duracion = Int
type Titulo = String

data Estado = Reproducido | SinReproducir deriving Show
data PlayList = Tema Titulo Rank Estado Duracion PlayList | SinTemas deriving Show


segundosRestantes :: PlayList -> Rank -> Duracion
segundosRestantes SinTemas r = 0
segundosRestantes (Tema _ _ Reproducido _ ps) r = segundosRestantes ps r
segundosRestantes (Tema _ rank SinReproducir t ps) r | rank >= r = t + segundosRestantes ps r
                                                     | otherwise = segundosRestantes ps r

--segundosRestantes  (Tema "Pink" 5 SinReproducir 240 (Tema "Signos" 5 Reproducido 270 (Tema "Historia de Taxi" (-10) SinReproducir 400 SinTemas))) 2
--240



estadoDelTema :: Titulo -> PlayList -> Maybe Estado
estadoDelTema _ SinTemas = Nothing
estadoDelTema t (Tema ti _ e _ pls) | t == ti = Just e
                                    | otherwise = estadoDelTema t pls

--estadoDelTema  "Signos" (Tema "Pink" 5 SinReproducir 240 (Tema "Signos" 5 Reproducido 270 (Tema "Historia de Taxi" (-10) SinReproducir 400 SinTemas)))
--Just Reproducido

--estadoDelTema "Help!" (Tema "Pink" 5 SinReproducir 240 (Tema "Signos" 5 Reproducido 270 (Tema "Historia de Taxi" (-10) SinReproducir 400 SinTemas)))  
--Nothing