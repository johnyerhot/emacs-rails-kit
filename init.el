;; init.el - from which all other configuration flows

(require 'cl)

(defvar lib-dir "~/.emacs.d/")
(add-to-list 'load-path lib-dir)

(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq mac-emulate-three-button-mouse nil)
(prefer-coding-system 'utf-8)

(defun load-lib (name)
  (load (concat lib-dir name ".el")))

(when window-system (load-lib "emacs-gui"))
(load-lib "emacs-key-bindings" "emacs-modes")
;(load (concat lib-dir "emacs-key-bindings.el"))
;(load (concat lib-dir "emacs-modes.el"))