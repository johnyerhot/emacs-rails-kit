;; emacs-modes.el - loading different modes to extend emacs

(load-lib-dir "modes")

; Magit
(require 'magit)

; Textile
(require 'textile-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

