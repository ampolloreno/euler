(defun pmultiple_3_or_5 (num)
  (if (or (= (mod num 3) 0)
          (= (mod num 5) 0)) T Nil))

(defun filter (f list)
  (cond
    ((not list)                   ;; the list is empty
     nil)
    ((funcall f (first list))     ;; the first element satisfies the test
     (cons (first list) (filter f (rest list))))
    (t                            ;; otherwise ...
     (filter f (rest list)))))

(defun range (max &key (min 0) (step 1))
   (loop for n from min below max by step
      collect n))

(reduce '+ (filter #'pmultiple_3_or_5 (range 1000 :min 0 :step 1)))
