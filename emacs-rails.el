;; emacs-rails.el - functions, bindings and config for working w/ rails

;; Textmate - helpful mode from defunkt
(load-lib-dir "vendor/textmate")
(require 'textmate)
(textmate-mode t)

;; Ruby
(require 'ruby-mode)
(require 'ruby-electric)
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))

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

;; YAML
(require 'yaml-mode)

;; Snippet's - our choice here is yasnippet, i like the mode linkings
(defvar yasnippet-dir "vendor/yasnippet")
(load-lib-dir yasnippet-dir)
(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat root-dir yasnippet-dir "/snippets"))

