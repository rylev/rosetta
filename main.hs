module Main where

import Data.List
import Data.Map (fromListWith, toList)
import Data.Char (isAlpha)

main :: IO ()
main = print "Hello, world! Sorry for the language"

tokenize :: String -> [String]
tokenize = filter (not . null) . (map (filter isAlpha)) . words

frequency :: [String] -> [(String, Integer)]
frequency = toList . fromListWith (+) . map (\x -> (x, 1))


