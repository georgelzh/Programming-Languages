(defn sum_largest_n_smallest []

	;get 3 user input
	(println "enter 3 numbers")
	(let [a (Integer/parseInt (read-line)) b (Integer/parseInt (read-line)) c (Integer/parseInt (read-line))]
	(println "sum is" (+ a (+ b c))) ; (+ a b c)
	(println "average is" (/ (+ a (+ b c)) 3))
	
	;compare them and get largest
	(if (and (> a b)(> a c)) (println "largest number is: " a) "")
	(if (and (> b a)(> b c)) (println "largest number is: " b) "")
	(if (and (> c b)(> c a)) (println "largest number is: " c) "")

	;compare them and get smallest
	(if (and (< a b) (< a c)) (println "smallest number is: " a) "")
	(if (and (< b a) (< b c)) (println "smallest number is: " b) "")
	(if (and (< c b) (< c a)) (println "smallest number is: " c) "")
)
)

(sum_largest_n_smallest)