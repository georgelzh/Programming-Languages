(def sentence "  a man a PLAN , a canal.  panama")

(defn palindrome? [string]
    (println string)
    (let [lower-case-string (clojure.string/lower-case string)] ; get lowercase of the string
        (let [trim-string (clojure.string/trim lower-case-string)]  ;clean the space from beginning and end.
            (let [vector-string (clojure.string/split trim-string #" ")] ;split the line by spaces, returns vector
                (let [string-with-punctuation (clojure.string/join "" vector-string)] ; join the vector together to remove spaces
                    (let [clean-string (clojure.string/replace string-with-punctuation #"[^\w]" "")] ; remove punctuations
                        (let [reverse-string (apply str (reverse clean-string))] ;reverse the clean-string and compare it to clean-string
                        (if (= reverse-string clean-string) (println "true") (println "false")) ;if they are equal, return true, otherwise return false
                        )
                    )
                    
                )
            )
        )
    )
)

;main function

(palindrome? sentence)


;lower case
;https://clojuredocs.org/clojure.string/lower-case
;join
;https://clojuredocs.org/clojure.string/join
;split
;https://clojuredocs.org/clojure.string/split
;reverse
;https://clojuredocs.org/clojure.string/reverse
;replace
;https://clojuredocs.org/clojure.string/replace
;pattern
;https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html