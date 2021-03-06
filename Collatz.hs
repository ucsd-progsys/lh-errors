

{-@ hailstone :: {v:Int | v > 0} -> {v2:[Int] | len v2 > 0} @-}
hailstone :: Int -> [Int]
hailstone = takeWhile (/=1) . (iterate collatz)
  where collatz n = if even n then n `div` 2 else 3*n+1

{-@ lastHailstone :: {v:Int | v > 0} -> {v2:Int | v2 == 1} @-}
lastHailstone = head . reverse . hailstone
