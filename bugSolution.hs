The following corrected code handles negative inputs gracefully and avoids the stack overflow error.  It uses tail recursion, ensuring efficient evaluation. 

```haskell
factorial :: Integer -> Maybe Integer
factorial n
  | n < 0     = Nothing  -- Handle negative inputs
  | n == 0    = Just 1
  | otherwise = go n 1
  where
    go 0 acc = Just acc
    go n acc = go (n - 1) (n * acc)

main :: IO ()
main = do
  print (factorial (-1))
  print (factorial 5)
```
The `Maybe` type is used to represent the possibility of an error (for negative inputs).  The `go` function employs tail recursion for efficiency.