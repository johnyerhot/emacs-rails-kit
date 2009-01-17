;; emacs-modes.el - loading different modes to extend emacs

(load-lib-dir "modes")

; Interactively Do Things - ido - needed
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

; SLIME
(require 'slime)

; Magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

; Textile
(require 'textile-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

