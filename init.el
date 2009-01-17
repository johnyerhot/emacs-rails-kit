;; init.el - from which all other configuration flows

(require 'cl)

(defvar lib-dir "~/.emacs.d/")
(defun load-lib (name)
  (load (concat lib-dir name ".el")))
(defun load-lib-dir (path)
  (add-to-list 'load-path (concat lib-dir path)))

(load-lib-dir lib-dir)

(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq mac-emulate-three-button-mouse nil)
(prefer-coding-system 'utf-8)

(when window-system (load-lib "emacs-gui"))
(load-lib "emacs-key-bindings")
(load-lib "emacs-modes")
