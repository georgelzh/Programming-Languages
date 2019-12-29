(def gameOver true)
(loop [x 10]
    (println x)
    (if (= gameOver true)
        (println "game over")
        (recur (dec x))
    )
)