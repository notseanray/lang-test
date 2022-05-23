let fib =
  let rec loop n iter test prev curr =
    if n < 1000000000 then
      if prev > 999999999 then
        loop (n + 1) iter test 0 1
      else
        loop n (iter + 1) (if iter mod 2 == 0
                           then test + prev
                           else test - prev)
          curr (prev + curr)
    else (iter, test)
  in loop 0 0 0 0 1

let () =
  let (iter, test) = fib in
  Printf.printf "Iterations: %d, Test: %d\n" iter test
