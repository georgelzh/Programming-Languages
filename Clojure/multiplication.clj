(defn multiplication []
	(println "To get a multiplies b, First Enter number a then enter number b :")
	(let [a (Integer/parseInt (read-line)) b (Integer/parseInt (read-line))]
	(println a "*" b "= "(* a b))	
))

(multiplication)


