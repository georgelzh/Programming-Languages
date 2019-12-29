(defn my-loop [i j]
	(loop [x 0]
		(when (< x i) ; when this is true
			(loop [y 0]
				(when (< y j) ; when true
				(println "array ["x "  " y "]")
				(recur (+ y 1))))
			(recur (+ x 1)) ; otherwise add it
			)))
(my-loop 2 3)