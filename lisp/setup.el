(setq ta-rubrics '(("homework" . (("\"technical\"" . 0.7)
				  ("\"presentation\"" . 0.3)))
		   ("exam" . (("\"technical\"" . 0.7)
			      ("\"presentation\"" . 0.3)))
		   ("multiple-choice" . (("\"participation\"" . 1.0)))
		   ("participation" . (("\"participation\"" . 1.0)))))

;; start dft-mode
(dft-book-mode)
(message "course setup.el loaded")
