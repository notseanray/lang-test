(ns fib)

#?(:clj
   (do
    (set! *unchecked-math* :warn-on-boxed)
    (set! *warn-on-reflection* true)))

(defn fib
  []
  (loop [n 0
         iter 0 test 0
         prev 0 curr 1]
    (if (< n 1000000000)
      (do (if (> prev 999999999)
            (recur (inc n) iter test 0 1)
            (recur n (inc iter) (if (even? iter)
                                  (+ test prev) (- test prev))
                   curr (+ prev curr))))
      ["iter: " iter " test: " test])))

(defn -main
  [& args]
  (println (fib)))
