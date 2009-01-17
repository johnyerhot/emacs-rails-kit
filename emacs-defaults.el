;; emacs-defaults - to make emacs a better default environment

(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq mac-emulate-three-button-mouse nil)
(prefer-coding-system 'utf-8)

;; open any .bash files in sh-mode
(add-to-list 'auto-mode-alist '("\\.bash.*" . sh-mode))