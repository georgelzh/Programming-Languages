;get mean, median, and mode up to 99 integers with array

(def arr (into-array [1,2,2,2,3,4,5,6,7,8]))



;--------function units--------------------------------------------

;get mean function
(defn get_mean [coll]
    (let [x (count coll) sum (reduce + coll)]
        (println "mean number is: "(/ sum x))
    )
)

;get median function
(defn get_median [coll]
    (let [x (count coll) sorted_coll (sort coll)]
        (cond
            (= true (odd? (int x))) (println "median number is: "(nth sorted_coll (/ (int x) 2))) ; if x is integer print the median
            (= false (odd? (int x))) (let [a (int(Math/floor (/ x 2))) b (dec a)] ; otherwise, let a = middle number+1; b = middle number-1
                    (println "median number is: " (float (/ (+ (nth sorted_coll a) (nth sorted_coll b)) 2))) ; add up the number at index a and number at index b
                )
            :else (println "Error")
        )
    )
)


;get mode number

(defn get_mode [coll]

    (println "mode number is: "(key (apply max-key val (frequencies coll))))
)


;----------main function----------------


;main function
(defn main [coll]
    (get_mean coll)
    (get_median coll)
    (get_mode coll)
)

;run main function
(main arr)



;get ceiling and floor
;https://stackoverflow.com/questions/28551000/what-is-the-best-way-to-round-numbers-in-clojure
;sort https://clojuredocs.org/clojure.core/sort
;reduce https://clojuredocs.org/clojure.core/reduce
;vals https://clojuredocs.org/clojure.core/vals
;max https://clojuredocs.org/clojure.core/max
;max-key https://clojuredocs.org/clojure.core/max-key