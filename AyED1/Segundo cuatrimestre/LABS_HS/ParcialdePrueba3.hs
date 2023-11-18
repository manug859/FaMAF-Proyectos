--Ejercicio 2.a
type Titulo = String
type Precio = Int
type AnioAgenda = Int

data Categoria = Literatura | Infantiles | Autoayuda | Comics deriving Show
data Editorial = Altea | Minotauro | Panini deriving Show
data Marca = Monoblock | Papikra deriving Show

data ArticulosLibreria = Libro Categoria Editorial Titulo Precio | Agenda Marca AnioAgenda Precio | Cuaderno Marca Precio deriving Show

--Ejercicio 2.b

cuantosLibros :: [ArticulosLibreria] -> Categoria -> Int
cuantosLibros [] c = 0
cuantosLibros ((Libro Literatura _ _ _):xs) Literatura = 1 + cuantosLibros xs Literatura
cuantosLibros ((Libro Infantiles _ _ _):xs) Infantiles = 1 + cuantosLibros xs Infantiles
cuantosLibros ((Libro Autoayuda _ _ _):xs) Autoayuda   = 1 + cuantosLibros xs Autoayuda
cuantosLibros ((Libro Comics _ _ _):xs) Comics         = 1 + cuantosLibros xs Comics
cuantosLibros (_:xs) c = cuantosLibros xs c

--cuantosLibros [(Libro(Literatura)(Altea)("Las diezmil obras al cielo")(20)),(Libro(Autoayuda)(Altea)("Como ser feliz")(2)),(Libro(Literatura)(Altea)("Algoritmos y Estructuras de Datos")(2))] Literatura
--2

--Ejercicio 2.c

mismaEditorial :: Editorial -> Editorial -> Bool
mismaEditorial Altea Altea = True
mismaEditorial Minotauro Minotauro = True
mismaEditorial Panini Panini = True
mismaEditorial _ _ = False

mismaMarca :: Marca -> Marca -> Bool
mismaMarca Monoblock Monoblock = True
mismaMarca Papikra Papikra = True
mismaMarca _ _ = False


instance Eq ArticulosLibreria where
    (Libro _ e1 t1 _) == (Libro _ e2 t2 _) = mismaEditorial e1 e2 && t1 == t2
    (Agenda m1 a1 p1) == (Agenda m2 a2 p2) = mismaMarca m1 m2 && a1 == a2 && p1 == p2
    _ == _ = False


--Ejercicio 3 
data Nivel = One | Two | Three
data NotasDeIngles = EvolucionDelEstudiante String Nivel Int Int Int NotasDeIngles | NoHayMasEstudiantes 



pasaDeNivel :: NotasDeIngles -> String -> Bool
pasaDeNivel (EvolucionDelEstudiante str1 One int1 int2 int3 ndi) ""    | (int1 + int2 >= 7) && (int3 >= 6) = True
pasaDeNivel (EvolucionDelEstudiante str1 Two int1 int2 int3 ndi) ""    | (int1 + int2 >= 7) && (int3 >= 6) = True 
pasaDeNivel (EvolucionDelEstudiante str1 Three int1 int2 int3 ndi) ""  | (int1 > 7) && (int2 > 7) && (int3 >= 8) = True 
                                                                       | otherwise = False
pasaDeNivel NoHayMasEstudiantes _ = False
pasaDeNivel (EvolucionDelEstudiante _ _ _ _ _ ndi) _ = pasaDeNivel ndi "" 

