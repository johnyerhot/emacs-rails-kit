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

(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")))

;; Textile
(require 'textile-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

;; CSS
(require 'css-mode)

;; Javascript (espresso)
(autoload 'espresso-mode "espresso" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))
(setq espresso-indent-level 2)

;; Cheat - for using cheat.errtheblog.com for some reference
(require 'cheat)

;; Gist - learn to use this within emacs and it WILL help you
;; it will use your ~/.gitconfig if it finds one
;; see: http://github.com/blog/180-local-github-config
(require 'gist)

;; Scala
(load-lib-dir "vendor/scala-mode")
(require 'scala-mode-auto)
(defun me-turn-off-indent-tabs-mode ()
  (setq indent-tabs-mode nil))
(add-hook 'scala-mode-hook 'me-turn-off-indent-tabs-mode)

;; ;; Clojure
;; (load-lib-dir "vendor/clojure-mode")
;; (require 'clojure-auto)

;; (load-lib-dir "vendor/slime")
;; (require 'slime)
;; (slime-setup)

;; (load-lib-dir "vendor/swank-clojure")
;; ;; this file can be found as gist: 48869
;; ;; or checkout this video: http://vimeo.com/2419596
;; (setq swank-clojure-binary "~/bin/clojure")
;; (require 'swank-clojure-autoload)