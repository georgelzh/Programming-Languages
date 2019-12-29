(defn hello []
	(println "Enter your name:")
	(let [name (read-line)] 
	(println "Hello" name))

)

(hello)

;how to get user input
;https://xvrdm.github.io/2017/06/08/clojure-for-pythonista-user-input-loop-conditional/