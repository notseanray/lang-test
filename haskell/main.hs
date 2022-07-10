-- I have no idea how to do this properly

fib :: (Int, Int) -> (Int, Int)
fib res = do
	if res.0 > 999999999
		then res
	else
		if res.1 `mod` 2 == 0
			fib (res.0 - 1 + (fib res.0 - 2).0 res.1 + res.0)
		else
			fib (res.0 - 1 + (fib res.0 - 2).0 res.1 - res.0)

fibLoop :: Integer -> Int -> Integer -> Int
fibLoop iter test = do
    let result = fibLoop iter + 1 test + x

main :: IO ()
main = do
    putStrLn "test"

