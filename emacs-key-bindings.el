;; emacs-key-bindings.el - bindings that make life easier

(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-z") 'undo)

;; set line commenting to textmate style
(global-set-key (kbd "M-/") 'comment-or-uncomment-region)