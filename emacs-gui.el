;; emacs-gui.el - configuration for when running emacs in a gui environment

;; interface tweaks
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; turn off 3d modeline
(set-face-attribute 'mode-line nil :box nil)

(column-number-mode t)

;; set the size of the emacs frame
(setq default-frame-alist 
      '((width . 120) 
        (height .40) 
        (font . "-apple-inconsolata-medium-r-normal--18-0-72-72-m-0-iso10646-1")))

;; color theme - with my merbivore theme applied
(load-lib-dir "modes/color-theme")
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(color-theme-merbivore)