--Parcial 1 
--1.a)

data Deportista = Futbolista Nombre Zona Titulos | Tenista Nombre Categoria Titulos | Velocista Nombre Titulos
data Zona = Arco | Defensa | Mediocampo | Delantera
data Categoria = Simples | Dobles
type Titulos = Int
type Nombre = String


--1.b)

mismazona :: Zona -> Zona -> Bool
mismazona Arco Arco = True
mismazona Defensa Defensa = True
mismazona Mediocampo Mediocampo = True
mismazona Delantera Delantera = True
mismazona _ _ = False


--ESTE SE HACE CON PATTERN MATCHING, OSEA. SIN IGUALDAD, CASI SIEMPRE HARDCODEADO.


--1.c)

puntaje_titulos :: Deportista -> Int
puntaje_titulos (Tenista(x)(y)(z)) = (z)
puntaje_titulos (Futbolista(x)(y)(z)) = (z*2)
puntaje_titulos (Velocista(x)(y)) = (y*3)

--1.d) 

--No entendí el enunciado

--2.a)

futbolistas_zona :: [Deportista] -> Zona -> [Nombre]
futbolistas_zona [] _ = []
futbolistas_zona (Futbolista(n)(Arco)(t):ds) Arco               = n : futbolistas_zona ds Arco
futbolistas_zona (Futbolista(n)(Defensa)(t):ds) Defensa         = n : futbolistas_zona ds Defensa
futbolistas_zona (Futbolista(n)(Mediocampo)(t):ds) Mediocampo   = n : futbolistas_zona ds Mediocampo
futbolistas_zona (Futbolista(n)(Delantera)(t):ds) Delantera     = n : futbolistas_zona ds Delantera
futbolistas_zona ((_):ds) z = futbolistas_zona ds z      

--2.b) futbolistas_zona [Tenista ("MANUEL")(Simples)(2), Futbolista ("ALEJO")(Delantera)(1), Futbolista ("LUCIANO")(Mediocampo)(9), Futbolista("ARIEL")(Arco)(2)] Delantera

--2.c) ["ALEJO"]

--3) 

data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b) deriving Show 

la_adicionar :: Num b => ListaAsoc a b -> b -> ListaAsoc a b
la_adicionar Vacia _ = Vacia
la_adicionar (Nodo a b xs) c = (Nodo a (b+c) (la_adicionar xs c))

