;; emacs-rails.el - config that will make working with rails seriously fun

;; Textmate - helpful mode from defunkt
(load-lib-dir "vendor/textmate")
(require 'textmate)
(textmate-mode t)

;; Ruby
(require 'ruby-mode)
(require 'ruby-electric)
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))

(global-set-key (kbd "M-r") 'ruby-compilation-this-buffer)

;; Rinari
(load-lib-dir "vendor/jump")
(load-lib-dir "vendor/rinari")
(require 'rinari)

;; Rhtml
(load-lib-dir "vendor/rhtml")
(require 'rhtml-mode)

;; Haml & Sass
;; So erb is nice, but haml and sass have their place, in a
;; way, it's easier to deal with haml and sass in emacs than it
;; is html/erb.
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

(eval-after-load 'haml-mode
  (if (functionp 'whitespace-mode)
      (add-hook 'haml-mode-hook 'whitespace-mode)))

;; YAML
(require 'yaml-mode)

;; Snippet's - our choice here is yasnippet, i like the mode linkings
(defvar yasnippet-dir "vendor/yasnippet")
(load-lib-dir yasnippet-dir)
(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat root-dir yasnippet-dir "/snippets"))

;; C-l inserts a hash mark
(eval-after-load 'ruby-mode 
  '(progn
     (define-key ruby-mode-map (kbd "C-l") " => ")))
(eval-after-load 'haml-mode 
  '(progn
     (define-key haml-mode-map (kbd "C-l") " => ")))
(eval-after-load 'rhtml-mode 
  '(progn
     (define-key rhtml-mode-map (kbd "C-l") " => ")
     (define-key rhtml-mode-map (kbd "M-s") 'save-buffer)))