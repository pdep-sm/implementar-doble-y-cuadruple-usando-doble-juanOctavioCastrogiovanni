module Library where
import PdePreludat
import Data.Char

doble :: Number -> Number
doble numero = numero + numero

cuadruple :: Number -> Number 
cuadruple numero =  (doble numero) * 2

