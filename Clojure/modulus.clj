(defn modulus []
	(println "To get a mod b, First Enter number a then enter number b :")
	(let [a (Integer/parseInt (read-line)) b (Integer/parseInt (read-line))]
	(println a "mod" b "= "(mod a b))
))

(modulus)