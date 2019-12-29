(defn startPeg [n]
    (loop [peg (vector) x n]
        (if (= x 0) ; when x = 0,
            peg     ;return peg
            (recur (conj peg x) (- x 1)) ; otherwise, recur the loop
        )
    )
)

(println (startPeg 8))