(defn get_bigger_num [a b](if(> a b) a b))

(defn get_biggest_num [coll]
	(reduce (fn [soFar curr](if (> soFar curr) soFar curr)) coll)
)

(println (get_biggest_num [1 2 3 4 5]))



(defn return_biggest_num [coll]
	(reduce get_bigger_num coll)
)

(println (return_biggest_num [1 2 3 4 5]))