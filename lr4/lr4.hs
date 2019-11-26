import Data.List

multiplyList multi list = map (* multi) list 
heads list = map head list
negs list = map (* (-1)) list
encode sq = map (\x -> head(zip (length x : []) (head x : []))) (group sq)
onlyEven list = filter (\x -> mod x 2 > 0) list
deleteElement x list = filter (/= x) list

main = do 
  print (multiplyList 10 [1,2,3])
  print (heads [[1,2],[3,4,5],[6,7]])
  print (negs [1,-2,3])
  print (encode "aaaabbbbcccccc")
  print (onlyEven [1,2,3,4,5,6,7,8,9,10])
  print (deleteElement 1 [1,2,1,3,1,4])