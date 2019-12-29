(defn triangle_printing [n]

    ;print from 1 * to n *
    (loop [x 1]
        (when (< x (inc n))
                (println (repeat x "*")) ; print if true
                (recur (+ x 1))
        )
    )

    (println)

    ;make a loop that does from n * to 1 *
    (loop [x n]
        (when (> x 0)
                (println (repeat x "*")) ; print if true
                (recur (- x 1))
        )
    )

    (println)

        ;make a loop that does from n * to 1 *
    (loop [x n]
        (when (> x 0)
                (println (repeat x "*")) ; print if true
                (recur (- x 1))
        )
    )

    (println)

        ;print from 1 * to n *
    (loop [x 1]
        (when (< x (inc n))
                (println (repeat x "*")) ; print if true
                (recur (+ x 1))
        )
    )
    

)

(triangle_printing 8)


;repeat
;https://clojuredocs.org/clojure.core/repeat

