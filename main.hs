module Main where

import Data.List
import Data.Map (fromListWith, toList)
import Data.Char (isAlpha)

type TranslatedString = (String, String)
type WordWithFrequency = (String, Integer)

main :: IO ()
main = undefined

tokenize :: String -> [String]
tokenize = filter (not . null) . (map (filter isAlpha)) . words

frequency :: [String] -> [WordWithFrequency]
frequency = toList . fromListWith (+) . map (\x -> (x, 1))

format :: [TranslatedString] -> String
format translatedStrings = intercalate "\n" $ map (intercalate ": ") stringLists
  where stringLists = [[x,y] | (x,y) <- translatedStrings]

translateString :: String -> IO String
translateString = undefined

translateWords :: [WordWithFrequency] -> [String]
translateWords = undefined

serialize :: [WordWithFrequency] -> String
serialize = undefined

removeRareWords :: [WordWithFrequency] -> [WordWithFrequency]
removeRareWords = undefined

medianFrequency :: [WordWithFrequency] -> Integer
medianFrequency = undefined
-- medianFrequency wordsWithFreq = median sort frequencies
--   where frequencies = map snd wordsWithFreq

median :: [Integer] -> Integer
median [] = 0
median [x] = x
median xs
  | odd $ length xs = head . reverse $ take limit (sort xs)
  | otherwise       = (foldl (+) 0 middleTwo) `quot` 2
    where len = length xs
          limit = (len + 1) `quot` 2
          middleTwo = drop (len - 1) . take (len + 1) $ sort xs
