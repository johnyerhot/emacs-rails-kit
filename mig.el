;; mig.el - personal stuff

; Map command-x,c,v to cut, copy, paste
(global-set-key (kbd "C-w") 'clipboard-kill-region)
(global-set-key (kbd "M-w") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-y") 'clipboard-yank)

(set-face-font 'default "-apple-dejavu sans mono-medium-r-normal--14-0-72-72-m-0-iso10646-1")