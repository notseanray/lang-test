proc main() =
    var iter = 0
    var test = 0
    for i in 0 ..< 1000000000:
        var 
            prev = 0
            current = 1
        while prev <= 999999999:
            iter += 1 
            if iter mod 2 == 0:
                test += prev
            else:
                test -= prev
            current += prev
            prev = current - prev
    echo("Done in: ", iter, " Test: ", test)

main() 
