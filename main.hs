module Main where

import Data.List
import Data.Map hiding (map)

main :: IO ()
main = print "Hello, Fuck"

tokenize :: String -> [String]
tokenize = words

frequency :: [String] -> [(String, Integer)]
frequency = toList . fromListWith (+) . map (\x -> (x, 1))

