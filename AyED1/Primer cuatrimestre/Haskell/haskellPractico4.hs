data Color = Rojo | Amarillo | Azul | Verde deriving (Show, Eq)
data Forma = Triangulo | Cuadrado | Rombo | Circulo deriving (Show, Eq)
type Figura = (Forma, Color, Int)

rojo :: Figura -> Bool
rojo (f,c,t) = c == Rojo

amarillo :: Figura -> Bool
amarillo (f,c,t) = c == Amarillo

azul :: Figura -> Bool
azul (f,c,t) = c == Azul

verde :: Figura -> Bool
verde (f,c,t) = c == Verde

triangulo :: Figura -> Bool
triangulo (f,c,t) = f == Triangulo

cuadrado :: Figura -> Bool
cuadrado (f,c,t) = f == Cuadrado

rombo :: Figura -> Bool
rombo (f,c,t) = f == Rombo

circulo :: Figura -> Bool
circulo (f,c,t) = f == Circulo

tam :: Figura -> Int
tam (f,c,t) = t

propA :: [Figura] -> Bool
propA [] = True
propA (x : xs) = rojo x && propA xs

propB :: [Figura] -> Bool
propB [] = True
propB (x : xs) = (tam x <5) && propB xs

propC :: [Figura] -> Bool
propC [] = True
propC (x : xs) = (triangulo x && rojo x) && propC xs

propD :: [Figura] -> Bool
propD [] = True
propD (x : xs) =  (cuadrado x && verde x) && propD xs 

propE :: [Figura] -> Bool
propE [] = True
propE (x : xs) = (circulo x && tam x <10) && propE xs

propF :: [Figura] -> Bool
propF [] = True
propF (x : xs) = (triangulo x && azul x) && propF xs