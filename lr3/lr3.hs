droplast (x:xs)
  | xs == [] = []
  | otherwise = x : droplast xs

main = print (droplast [1,2,3,4,7])