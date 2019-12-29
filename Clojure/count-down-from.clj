(defn factorial [n]
	(loop [output 0 x n]
		(if (= x 0) ; when this is true
			output;then return output
			(recur (* output x) (- x 1)) ; otherwise add it
			)
))

(println (factorial 3))
