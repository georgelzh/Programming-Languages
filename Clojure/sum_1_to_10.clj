(defn sum_1_to_10 []
	(loop [output 0 x 10]
		(if (= x 0) ; when this is true
			(println output);then return output
			(recur (+ output x) (- x 1)) ; otherwise add it
			)
))

(sum_1_to_10)
