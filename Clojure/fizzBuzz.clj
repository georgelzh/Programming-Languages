
(defn fizzBuzz []
    (loop [x 1]
        (when(< x 100)  ;loop from 1 to 100
            (cond
                (= true (and (= 0 (mod x 3)) (= 0 (mod x 5)))) (println "FizzBuzz") ;if x mod 3 also mod 5, print fizzbuzz
                (= true (and (= 0 (mod x 3)) (not= 0 (mod x 5)))) (println "Fizz")  ;if x mod 3 but not 5, print fizz
                (= true (and (not= 0 (mod x 3)) (= 0 (mod x 5)))) (println "Buzz")  ;if x mod 5 but not 3, print buzz
                :else (println x) ;else just print x
            )
            (recur (+ x 1)) ;recur 
        )
    )
)

(fizzBuzz)