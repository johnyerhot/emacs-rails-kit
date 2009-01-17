;; emacs-gui.el - configuration for when running emacs in a gui environment

;; interface tweaks
(tooltip-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; put buffer name in titlebar
(setq frame-title-format '(buffer-file-name "%f" ("%b")))

;; turn off 3d modeline
(set-face-attribute 'mode-line nil :box nil)

(column-number-mode t)

;; set the size of the emacs frame
(setq default-frame-alist 
      '((width . 120) 
        (height . 40)))

;; color theme - with my merbivore theme applied
(load-lib-dir "vendor/color-theme")
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(color-theme-merbivore)