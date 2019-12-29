(defn factorial []
	(println "Enter a number you want to factorial")
	(let [n (Integer/parseInt (read-line))]
	(loop [output 1 x n]
		(if (= x 0) ; when this is true
			(println output);then return output
			(recur (* output x) (- x 1)) ; otherwise add it
			))
))

(factorial)
