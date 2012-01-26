(when (equal system-type 'darwin)
  ;; make the 'delete' key do a forward delete in OS X, not a backspace
  (global-set-key [kp-delete] 'delete-char)
  (setenv "PATH" (concat "/Users/adi/bin:/Users/adi/local/bin:/opt/local/bin:/usr/local/bin:/usr/local/git/bin:" (getenv "PATH")))
  (push "/opt/local/bin" exec-path)
  (push "/Users/adi/bin" exec-path)
  (push "/usr/local/git/bin" exec-path))


(defun open-next-line()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))
(global-set-key (kbd "M-RET") 'open-next-line)
(global-set-key [s-return] 'open-next-line)


;; global bindings
(global-set-key "\M-g" 'goto-line)


(setq-default tab-width 4)
(setq-default c-basic-offset 4)


;; set startup frame size
(add-to-list 'default-frame-alist '(height . 48))
(add-to-list 'default-frame-alist '(width . 130))



;; Use 'y or 'n answers instead of full 'yes or no'
(fset 'yes-or-no-p 'y-or-n-p)

;; display time
(display-time)


;; indent with spaces, not tabs
(setq-default indent-tabs-mode nil)



;; prevent calls to display-buffer from resizing buffer windows
(setq even-window-heights nil)



;; fix stupid indents
(setq-default nxml-child-indent 4)
(setq-default sgml-basic-offset 4)



;; i like the menubar
(menu-bar-mode 1)



;; Start emacs server.
(load "server")
(unless (server-running-p) (server-start))



(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))



;; visual bell is for butts
(setq visible-bell nil)

;; fix the PATH variable
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
      (setq exec-path (split-string path-from-shell path-separator))))
(when window-system
  (require 'tabbar)
  (tabbar-mode)
  (require 'tabbar-ruler))

(set-face-attribute 'default nil :height 140)

(require 'tramp)
(setq tramp-default-method "scp")
