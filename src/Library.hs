module Library where
import PdePreludat
import Data.Char

type Desgaste = Number
type Patente = String
type Fecha = (Number, Number, Number)
 

anio :: Fecha -> Number
anio (_, _, year) = year



data Auto = Auto {
 patente :: Patente,
 desgasteLlantas :: [Desgaste],
 rpm :: Number,
 temperaturaAgua :: Number,
 ultimoArreglo :: Fecha
} deriving Show



    


presupuestoReparacion patente
    | (length patente == 7) = 12500
    | ("dj0000" <= patente) && (patente <= "nb0000") || ("DJ0000" <= patente) && (patente <= "NB0000") = calculoPatental patente
    | otherwise  = 15000 
 
ultimoNumero :: String -> Bool
ultimoNumero patente = last patente == '4'

calculoPatental patente 
   | ultimoNumero patente = 18000
   | otherwise = 20000

   