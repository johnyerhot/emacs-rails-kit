;; emacs-elpa.el - loading and configuring the emacs list package archive

(load-lib "package")
(load-lib-dir "elpa")
(require 'package)
(setq package-user-dir (concat root-dir "elpa"))
(package-initialize)

;; these packages will install when you first start emacs-rails-kit
(defvar auto-install-packages (list 
                               'css-mode
                               'full-ack
                               'ruby-mode 
                               'rinari 
                               'rspec-mode
                               'textmate 
                               'yaml-mode
                               'yasnippet)
  "Libraries that should be installed by default.")

(defun starter-kit-elpa-install ()
  "Install all starter-kit packages that aren't installed."
  (interactive)
  (dolist (package starter-kit-packages)
    (unless (functionp package)
      (package-install package))))

;; On your first run, this should pull in all the base packages.
;; But you might not be online, so ignore errors.
(ignore-errors
  (message "Checking base list of packages...")
  (starter-kit-elpa-install))