(require 'vc-git)
(setq ta-rubrics '(("homework" . (("\"technical\"" . 0.7)
				  ("\"presentation\"" . 0.3)))
		   ("exam" . (("\"technical\"" . 0.7)
			      ("\"presentation\"" . 0.3)))
		   ("multiple-choice" . (("\"participation\"" . 1.0)))
		   ("participation" . (("\"participation\"" . 1.0)))))

;; update submodules
(with-current-directory (cond
			 ((boundp 'tq-course-directory)
			  tq-course-directory)
			 ((boundp 'ta-course-dir)
			  ta-course-dir))
			(mygit "git submodule init")
			(mygit "git submodule update"))

;; start dft-mode
(load-file (expand-file-name  "dft-book/dft.el"
			      (cond
			       ((and (boundp 'tq-course-directory)
				     tq-course-directory)
				tq-course-directory)
			       ((and (boundp 'ta-course-dir)
				     ta-course-dir)
				ta-course-dir))))
(dft-book-mode)
(message "course setup.el loaded")
