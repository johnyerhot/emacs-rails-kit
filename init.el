;; init.el - where all other configuration flows

(require 'cl)
(defvar lib-dir "~/.emacs.d")
(add-to-list 'load-path lib-dir)
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq mac-emulate-three-button-mouse nil)
(prefer-coding-system 'utf-8)

;(when window-system (load (concat lib-dir "emacs-gui.el")))
