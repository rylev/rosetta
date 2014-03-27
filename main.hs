module Main where

import Data.List
import Data.Map (fromListWith, toList)
import Data.Char (isAlpha)

type TranslatedString = (String, String)

main :: IO ()
main = undefined

tokenize :: String -> [String]
tokenize = filter (not . null) . (map (filter isAlpha)) . words

frequency :: [String] -> [(String, Integer)]
frequency = toList . fromListWith (+) . map (\x -> (x, 1))

format :: [TranslatedString] -> String
format translatedStrings = intercalate "\n" $ map (intercalate ": ") stringLists
  where stringLists = [[x,y] | (x,y) <- translatedStrings]
