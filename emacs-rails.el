;; emacs-rails.el - functions, bindings and config for working w/ rails

;; Textmate - helpful mode from defunkt
(load-lib-dir "vendor/textmate")
(require 'textmate)
(textmate-mode t)

;; Cheat - for using cheat.errtheblog.com for some reference
(require 'cheat)

;; Gist - learn to use this within emacs and it WILL help you
;; it will use your ~/.gitconfig if it finds one
;; see: http://github.com/blog/180-local-github-config
(require 'gist)

;; Rinari
(load-lib-dir "vendor/jump")
(load-lib-dir "vendor/rinari")
(require 'rinari)

;; Rhtml
(load-lib-dir "vendor/rhtml")
(require 'rhtml-mode)

;; Snippet's - our choice here is yasnippet, i like the mode linkings
(defvar yasnippet-dir "vendor/yasnippet")
(load-lib-dir yasnippet-dir)
(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat root-dir yasnippet-dir "/snippets"))

