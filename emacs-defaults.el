;; emacs-defaults - to make emacs a better default environment

(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)
(set-default 'imenu-auto-rescan t)
(setq mac-emulate-three-button-mouse nil)

(mouse-wheel-mode t)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(recentf-mode 1)
(show-paren-mode 1)

(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ; case insensitive matching
(add-to-list 'ido-ignore-files "\\.DS_Store")

(defalias 'yes-or-no-p 'y-or-n-p)

;; Don't clutter up directories with files~
(setq backup-directory-alist 
      `(("." . ,(expand-file-name
                 (concat root-dir "backups")))))

;; open any .bash files in sh-mode
(add-to-list 'auto-mode-alist '("\\.bash.*" . sh-mode))