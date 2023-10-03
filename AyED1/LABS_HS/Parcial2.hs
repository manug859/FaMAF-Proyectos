--Parcial 2

--1.a)

type Titulo = String
type Artista = String
type Duracion = Int

data Genero = Rock | Blues | Pop | Jazz 

data Cancion = Tema Titulo Artista Genero Duracion | Publicidad Duracion


--1.b)

mismo_genero :: Genero -> Genero -> Bool
mismo_genero Rock Rock = True
mismo_genero Blues Blues = True
mismo_genero Pop Pop = True
mismo_genero Jazz Jazz = True
mismo_genero _ _ = False

--1.c) 

duracion_de :: Cancion -> Duracion
duracion_de (Tema(t)(a)(g)(d)) = d
duracion_de (Publicidad(d)) = d

--duracion_de (Tema("Cancion de Rock.")("Alejo")(Rock)(100))
--100

--duracion_de (Publicidad(90))
--90

--1.d) 

instance Eq Cancion
    where
     c1 == c2 = (duracion_de c1) == (duracion_de c2)

instance Ord Cancion
    where
     c1 <= c2 = (duracion_de c1) <= (duracion_de c2)

--2) Ejercicio2

solo_genero :: [Cancion] -> Genero -> [Titulo]
solo_genero [] _ = []
solo_genero (Tema(t)(a)(Rock)(d):gs) Rock   = t : solo_genero gs Rock
solo_genero (Tema(t)(a)(Blues)(d):gs) Blues = t : solo_genero gs Blues
solo_genero (Tema(t)(a)(Pop)(d):gs) Pop     = t : solo_genero gs Pop
solo_genero (Tema(t)(a)(Jazz)(d):gs) Jazz   = t : solo_genero gs Jazz
solo_genero (Publicidad(d):gs) g            = solo_genero gs g
solo_genero ((_):gs) g                      = solo_genero gs g

--3)

data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b)

la_suma_mayores :: (Ord b, Num b) => ListaAsoc a b -> b -> b
la_suma_mayores Vacia _ = 0
la_suma_mayores (Nodo a b xs) x | b>x = b + la_suma_mayores xs x
                                | otherwise = la_suma_mayores xs x


