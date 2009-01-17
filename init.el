;; init.el - from which all other configuration flows

(require 'cl)
(require 'ansi-color)
(require 'recentf)

(defvar root-dir "~/.emacs.d/")
(defun load-lib (name)
  (load (concat root-dir name ".el")))
(defun load-lib-dir (path)
  (add-to-list 'load-path (concat root-dir path)))

(load-lib-dir root-dir)

(setq autoload-file (concat root-dir "loaddefs.el"))
(setq custom-file (concat root-dir "custom.el"))

;; Here is the package it, what you install with it is up to you, there
;; will probably be some overlap though in what I provide in the modes
;; directory and what the elpa offers, not sure what to do about that
(load-lib "package")
(load-lib-dir "elpa")
(require 'package)
(setq package-user-dir (concat root-dir "elpa"))
(package-initialize)

(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq mac-emulate-three-button-mouse nil)
(prefer-coding-system 'utf-8)

(when window-system (load-lib "emacs-gui"))
(load-lib "emacs-key-bindings")
(load-lib "emacs-functions")
(load-lib "emacs-lisp")

(load custom-file 'noerror)

;; Load user config and system config
(setq system-specific-config (concat root-dir system-name ".el")
      user-specific-config (concat root-dir user-login-name ".el"))

(if (file-exists-p system-specific-config) (load system-specific-config))
(if (file-exists-p user-specific-config) (load user-specific-config))

 ;; init.el end