fn main() {
    fib();
}

fn fib() {
    let mut iter: usize = 0;
    let mut test = 0;
    for _ in 0..1000000000 {
        let mut x = 0;
        let mut y = 1;
        loop {
            iter += 1;
            if iter & 1 == 0 {
                test += x;
            } else {
                test -= x;
            }
            let i = x + y;
            x = y;
            y = i;
            if x > 999999999 { break; }
        }
    }
    println!("iter: {iter} test: {test}");
}
