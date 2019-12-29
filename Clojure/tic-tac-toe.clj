; tic tac toe game

; components
(def gameOver false) ;default the gameOver value as false
(def mapa {})  ;map that stores the game board
(def counter 0) ;counter is 0
(def move-location "")  ;stores the location of the map the user enters
(def move-counter 1)  ;count the number of the move
(def move-sign "")  ;stores the sign the user enters
(def win-map {:0 {:00 "x", :01 "x", :02 "x"}, :1 {:00 "o", :01 "o", :02 "o"},
              :2 {:10 "x", :11 "x", :12 "x"}, :3 {:10 "o", :11 "o", :12 "o"},
              :4 {:20 "x", :21 "2", :22 "x"}, :5 {:20 "o", :21 "o", :22 "o"},
              :6 {:00 "x", :10 "x", :20 "x"}, :7 {:00 "o", :10 "o", :20 "o"},
              :8 {:10 "x", :11 "x", :12 "x"}, :9 {:10 "o", :11 "o", :12 "o"},
              :10 {:20 "x", :21 "x", :22 "x"}, :11 {:20 "o", :21 "o", :22 "o"},
              :12 {:00 "x", :11 "x", :22 "x"}, :13 {:00 "o", :11 "o", :22 "o"},
              :14 {:02 "x", :11 "x", :20 "x"}, :15 {:02 "o", :11 "o", :20 "o"}
              })


;print the board
(defn printBoard [i j]
(loop [x 0]  ;using a loop the print the values inside the map in orders
    (when (< x i)
      (loop [y 0]
        (when (< y j)
        (print ((keyword (str x y)) mapa) "")
          ; (print (aget coll x y))
      (recur (+ y 1))))
      (println)
  (recur (+ x 1)))))


;make sure the sign is x or o, and if it is, change move-sign to final move sign
(defn checkAndUpdateSign [sign]
  (let [sign (clojure.string/lower-case sign)]  ;make sign lower case
    (let [isX (and (= (count sign) 1) (and (= (mod move-counter 2) 1) (= sign "x")))] ;make sure the sign is 'x' and counter mod 2 is 1
      (let [isY (and (= (count sign) 1) (and (= (mod move-counter 2) 0) (= sign "o")))] ;make sure the sign is 'o' and counter mod 2 is 0
        (when isX
          (def move-sign "x")
          (def move-counter (inc move-counter))
        )
        (when isY
          (def move-sign "o")
          (def move-counter (inc move-counter))
        )
        (when-not (or isX isY)
          (def move-sign "wrong-move")
        )
      )
    )
  )
)


;moveIfNotEmpty moves only when the location of tic-tac-toe is empty
(defn moveInOrderIfNotEmpty [location sign]
  (println)
  (checkAndUpdateSign sign)
    (if (contains? mapa (keyword location)) ; if the location is taken, print
      (println "This location is taken. Select a empty spot. Enter again")
      (if (= move-sign "wrong-move")    ;if user entered the wrong sign , warn it
        (println "Please enter the opposite sign, and make sure you only enter either 'x' or 'o'.")
        (def mapa (assoc mapa location move-sign))
        )
  )
)


;move functionmakes a move in the board game, it takes the two parameters
;1, it takes the location numbers; 2, it takes the sign such as "x" or "o"
(defn move[location sign]
  (try 
    (let [location (Integer/parseInt location)] ; parse string to int
          ;make sure the location is on the map and make sure location is integer.
          ;convert location to keyword so that we can use it in the map for later. 
          (when (= (count (str location)) 1)
            (let [location (str location)]
                (case location
                  "1" (def move-location (keyword (str 0 0)))
                  "2" (def move-location (keyword (str 0 1)))
                  "3" (def move-location (keyword (str 0 2)))
                  "4" (def move-location (keyword (str 1 0)))
                  "5" (def move-location (keyword (str 1 1)))
                  "6" (def move-location (keyword (str 1 2)))
                  "7" (def move-location (keyword (str 2 0)))
                  "8" (def move-location (keyword (str 2 1)))
                  "9" (def move-location (keyword (str 2 2)))
                  ;handle the case when location input is more than 1 character
                  :else (println "please enter only one number between 1-9 as location")
                )
                (moveInOrderIfNotEmpty move-location sign) ;move and update board
            )
          )
    )
    ;handle case when user put letters as location
    (catch Exception e (println "please enter only one number between 1-9 as location"))
  )
)


(defn win? []
  (when (= counter 3) ; if counter = 3, then someone won, game over
    (def gameOver true) ; make gameOver True
    (println "GameOver!") ; print gameOver
  )
)


(defn checkWin [board]
  (if (>= (count board) 3)  ;make sure the board has at least values in it.
      ;loop 3 times to check if the board map contains win-maps
    (loop [i 0]
      (when (< i 16)
        (def counter 0)
        (loop [x 0]
          (when (< x 3)
            (let [win-map-number (get win-map (keyword (str i)))] ;get win-map-index from index i inside win-map
              (let [position (nth (map key win-map-number) x)] ;get the key from the win-map-number and store it as "location"
                (when (= (get win-map-number position) (get board position)) ; compare the value from position x from win-map-number
                  (def counter (inc counter)) ;if they are equal, counter ++
                  (win?)  ;check if game is over, if it's over change bool gameOver to true
                  (if (= gameOver true)   ;if true, break the loop
                    (recur 4)
                    (recur (inc x)) ; otherwise, keep going
                  )
                )
              )
            )
          )
        )
        (if (= gameOver true) ;if true, break the loop
          (recur 16)
          (recur (inc i)) ; otherwise, keep going
          )
        
      )
    )
  )
)


(defn reStart []
  ;handle restart the game case
  (println "Enter 'yes' to restart the game!")
    (let [confirm (clojure.string/lower-case (read-line))]
      (when  (= confirm "yes")
        (def gameOver false) ; reset the game
        (def mapa {}) ;reset game board
      )
    )
)


;play function makes the user move for one time, and then it print the new board
(defn play[number sign]  
  (move number sign)
  (printBoard 3 3)
  (checkWin mapa)
  (if (= gameOver true)
    (reStart))
  (println)
)


(defn startGame[]
  (println "Here is a map of the location for the board
            [1,2,3,
             4,5,6
             7,8,9]")
  (println)
  (loop [x 999999999]
    (when (> x 0) ; when x is bigger than 0
          (println "Enter the location (numbers between 1-9) first, then enter the sign (x or o) in a new line")
          (let [a (read-line) b (read-line)]  ;take location # and sign from the user
            (play a b)  ;put the inputs into play function to update the game board
          )
        (if (= gameOver true) ;if true, break the loop
          (recur 0)
          (recur (dec x)) ; otherwise, keep going
          )
    )
  )
)



; main function
(startGame)

;key https://clojuredocs.org/clojure.core/key
;get https://clojuredocs.org/clojure.core/get
;count https://clojuredocs.org/clojure.core/count
;keyword https://clojuredocs.org/clojure.core/keyword
;get https://clojuredocs.org/clojure.core/get
;case https://clojuredocs.org/clojure.core/case