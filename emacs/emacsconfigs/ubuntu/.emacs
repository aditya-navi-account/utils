(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ido-mode (quote both) nil (ido))
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(add-to-list 'load-path "~/.emacs.d")

;;fuzzy file name completion
(require 'ido)

;;fuzzy command completion
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; global bindings
(global-set-key "\M-g" 'goto-line)

(setq-default tab-width 4)
(setq-default c-basic-offset 4)

;; Use 'y or 'n answers instead of full 'yes or no'
(fset 'yes-or-no-p 'y-or-n-p)

;; display time
(display-time)


;; indent with spaces, not tabs
(setq-default indent-tabs-mode nil)

;; fix stupid indents
(setq-default nxml-child-indent 4)
(setq-default sgml-basic-offset 4)

;; i like the menubar
(menu-bar-mode 1)


;; Start emacs server.
(load "server")
(unless (server-running-p) (server-start))

;; visual bell is for butts
(setq visible-bell nil)


(when window-system
  (require 'tabbar)
  (tabbar-mode)
  (require 'tabbar-ruler))