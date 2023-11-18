--Ejercicio 2.a
type Titulo = String
type Precio = Int
type AnioAgenda = Int

data Categoria = Literatura | Infantiles | Autoayuda | Comics deriving Show
data Editorial = Altea | Minotauro | Panini deriving Show
data Marca = Monoblock | Papikra deriving Show

data ArticulosLibreria = Libro Categoria Editorial Titulo Precio | Agenda Marca AnioAgenda Precio | Cuaderno Marca Precio deriving Show

librosBaratos :: [ArticulosLibreria] -> Precio -> [ArticulosLibreria]
librosBaratos [] _ = []
librosBaratos ((Libro c e t p):xs) pre | (p<=pre) = (Libro c e t p) : librosBaratos xs pre
librosBaratos (_:xs) pre               = librosBaratos xs pre


--librosBaratos [(Libro Literatura Minotauro "Horas" 220),(Libro Infantiles Panini "Hola" 280),(Libro Comics Altea "One Piece" 1220),(Agenda Monoblock 2023 390)] 300
--[Libro Literatura Minotauro "Horas" 220,Libro Infantiles Panini "Hola" 280]

mismaEditorial :: Editorial -> Editorial -> Bool
mismaEditorial Altea Altea = True
mismaEditorial Minotauro Minotauro = True
mismaEditorial Panini Panini = True
mismaEditorial _ _ = False


instance Eq ArticulosLibreria
    where
        (Libro _ e1 _ p1) == (Libro _ e2 _ p2) = mismaEditorial e1 e2 && p1==p2
        (Agenda _ a1 p1) == (Agenda _ a2 p2) = a1 == a2 && p1 == p2
        (Cuaderno _ p1) == (Cuaderno _ p2) = p1 == p2


data NotasDeIngles = EvolucionDelEstudiante String Nivel Int Int Int NotasDeIngles | NoHayMasEstudiantes
data Nivel = Uno | Dos | Tres deriving Show
 
pasaDeNivel :: NotasDeIngles -> String -> Bool
pasaDeNivel (EvolucionDelEstudiante str1 Uno int1 int2 int3 ndi) ""    | (int1 >= 7) && (int2 >= 8) && (int3 >= 7) = True
pasaDeNivel (EvolucionDelEstudiante str1 Dos int1 int2 int3 ndi) ""    | (int1 >= 7) && (int2 >= 8) && (int3 >= 7) = True
pasaDeNivel (EvolucionDelEstudiante str1 Tres int1 int2 int3 ndi) ""   | (mod (int1+int2) 8 == 0) && (int3 >= 8) = True
                                                                       | otherwise = False
pasaDeNivel NoHayMasEstudiantes _ = False
pasaDeNivel (EvolucionDelEstudiante _ _ _ _ _ ndi) _ = pasaDeNivel ndi "" 

--pasaDeNivel (EvolucionDelEstudiante "Alejo Vides" Tres 8 9 7(EvolucionDelEstudiante "Luciano Rojo" Uno 6 9 7)(EvolucionDelEstudiante "Ariel Alvar" Dos 8 9 7)(NoHayMasEstudiantes)) "Alejo Vides"

devolverNivel :: NotasDeIngles -> String -> Maybe Nivel
devolverNivel NoHayMasEstudiantes _ = Nothing
devolverNivel (EvolucionDelEstudiante str1 n int1 int2 int3 ndi) nombre | (nombre == str1) = Just n
                                                                        | otherwise = devolverNivel ndi nombre

