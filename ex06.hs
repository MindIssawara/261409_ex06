-- filter_concat
filter_concat :: ([a] -> Bool) -> [[a]] -> [a] -- the type of filter_concat
filter_concat _ [] = []
filter_concat pred (x:xs)
  | pred x    = x ++ filter_concat pred xs
  | otherwise = filter_concat pred xs

--can you avoid recursion in your definition?
filter_concat' :: ([a] -> Bool) -> [[a]] -> [a]
filter_concat' pred ls = concat(filter pred ls)

-- take_while
take_while :: (a -> Bool) -> [a] -> [a]
take_while _ [] = []
take_while pred (x:xs)
  | pred x    = x : take_while pred xs
  | otherwise = []

-- rewrite (\l -> length l < 3) without using lambda expressions
--  ((< 3) . length) 
--  type is ((< 3) . length) :: Foldable t => t a -> Bool

