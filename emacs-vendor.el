;; emacs-vedor.el - general purpose modes to extend emacs

(load-lib-dir "vendor")

;; Interactively Do Things (ido) emacs is more fun with ido fo real
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Unbound - describe-unbound-keys
(require 'unbound)

;; Magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

;; Textile
(require 'textile-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

;; CSS
(require 'css-mode)

;; Javascript (js2)
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-basic-offset 2)
(setq js2-use-font-lock-faces t)

;; Cheat - for using cheat.errtheblog.com for some reference
(require 'cheat)

;; Gist - learn to use this within emacs and it WILL help you
;; it will use your ~/.gitconfig if it finds one
;; see: http://github.com/blog/180-local-github-config
(require 'gist)

