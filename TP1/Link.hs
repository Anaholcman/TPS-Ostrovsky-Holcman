module Link ( Link, newL, linksL, connectsL, capacityL, delayL )
   where

import Point ( Point, newP, difP)
import City ( City, newC, nameC, distanceC ) 
import Quality ( Quality, newQ, capacityQ, delayQ )

data Link = Lin City City Quality deriving (Eq, Show)

newL :: City -> City -> Quality -> Link -- genera un link entre dos ciudades distintas
newL = Lin

connectsL :: City -> Link -> Bool   -- indica si esta ciudad es parte de este link
connectsL iscity (Lin city1 city2 calidad) = iscity == city1 || iscity == city2

linksL :: City -> City -> Link -> Bool -- indica si estas dos ciudades distintas estan conectadas mediante este link
linksL iscity1 iscity2 (Lin city1 city2 calidad) = (iscity1 == city1 && iscity2 == city2) || (iscity1 == city2 && iscity2 == city1)

capacityL :: Link -> Int
capacityL (Lin city1 city2 calidad) = capacityQ calidad

delayL :: Link -> Float     -- la demora que sufre una conexion en este canal
delayL (Lin city1 city2 calidad) = (delayQ calidad) * (distanceC city1 city2) 