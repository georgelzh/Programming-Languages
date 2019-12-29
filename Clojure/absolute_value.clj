;give a list of array, return absolute value of array.

(def a (into-array [2,-6,9,-2,-8]))
(defn abs [val]
    (if(neg? val) (* val -1) val) ;return absolute number if it's negative
    
    )

(println (map abs a))