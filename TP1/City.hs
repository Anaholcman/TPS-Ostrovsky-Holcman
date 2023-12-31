module City ( City, newC, nameC, distanceC )
   where

import Point ( Point, newP, difP )
import GHC.Generics (C)

data City = Cit String Point deriving (Eq, Show)

newC :: String -> Point -> City
newC = Cit

nameC :: City -> String
nameC (Cit name location) = name 

distanceC :: City -> City -> Float
distanceC (Cit name1 location1) (Cit name2 location2) = difP location1 location2