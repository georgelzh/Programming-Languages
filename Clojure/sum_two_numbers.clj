(defn sum[]
	(println "Enter two number:")
	(let [a (Integer/parseInt (read-line)) b (Integer/parseInt (read-line))]
	(println a "+" b "= "(+ a b))

))


(sum)