(import ../build/big :as big)

(assert (= "77" (string (big/int 77))))

(assert (= (unmarshal (marshal (big/int "343517"))) (big/int 343517)))

(assert (= (string (+ (big/int 1) (big/int "2") 3)) "6"))
(assert (= (string (+ 1 (big/int 1))) "2"))

(assert (= (big/int 8) (* (big/int 4) 2)))

(assert (= (big/int 5) (- (big/int 8) 3)))
(print (- 8 (big/int 3)))
#(assert (= (big/int 5) (- 8 (big/int 3))))
(print (/ 8 (big/int 2)))
#(assert (= (string (/ 4 (big/int 2))) "2"))
#(assert (= (string (/ (big/int 4) 2)) "2"))

# test that you can create a big/int from string, number, int/s64 int/u64
#(assert (= (big/int "77") (big/int 77) (big/int (int/s64 77)) (big/int (int/u64 77))))


