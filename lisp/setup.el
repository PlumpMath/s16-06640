(setq ta-rubrics '(("homework" . (("\"technical\"" . 0.7)
				  ("\"presentation\"" . 0.3)))
		   ("exam" . (("\"technical\"" . 0.7)
			      ("\"presentation\"" . 0.3)))
		   ("multiple-choice" . (("\"participation\"" . 1.0)))
		   ("participation" . (("\"participation\"" . 1.0)))))


;; make sure dft-book is here
(unless (file-exists-p (expand-file-name "~/dft-book/dft.org"))
  (error "No dft-book found!"))

(find-file-noselect (expand-file-name "~/dft-book/dft.org"))

(message "course setup.el loaded")
