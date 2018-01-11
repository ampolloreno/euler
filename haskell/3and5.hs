threeorfive n = n `mod` 3 == 0 || n `mod` 5 == 0
accumulator sum 0 = sum
accumulator sum n = if threeorfive n then accumulator (sum + n) (n - 1) else accumulator sum (n - 1)
start n = accumulator 0 n

main = print (start 1000)
