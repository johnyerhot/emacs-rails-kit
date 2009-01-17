;; emacs-vedor.el - general purpose modes to extend emacs

(load-lib-dir "vendor")

; Interactively Do Things - ido - needed
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Unbound - describe-unbound-keys
(require 'unbound)

; Magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

; Textile
(require 'textile-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

