;; emacs-fuctions.el - useful functions, or, functions i find useful

(defun newline-from-anywhere ()
  (interactive)
  (end-of-line)
  (newline-and-indent))

;; bind newline-from-anywhere to meta return, like textmate
(global-set-key [(meta return)] 'newline-from-anywhere)
