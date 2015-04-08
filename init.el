(require 'cl); common lisp goodies, loop

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
;; Based on http://melpa.milkbox.net/#/getting-started .

(require 'package)
(add-to-list 'package-archives
  ;; The 't' means to append, so that MELPA comes after the more
  ;; stable ELPA archive.
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(setq el-get-user-package-directory "~/.emacs.d/el-get-init")

(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://github.com/dimitri/el-get/raw/master/el-get-install.el")
    (end-of-buffer)
    (eval-print-last-sexp)))

(require 'el-get-elpa)

(setq
 my:el-get-packages
 '(el-get
   exec-path-from-shell
   switch-window
   evil
   evil-org-mode
   linum-relative
   helm
   ess
   monokai-theme
   evil-leader
   magit
   auctex
   yasnippet
   yasnippet-snippets
   projectile
   auto-complete
   smart-mode-line
   key-chord
   ace-jump-mode
   google-this
   lua-mode
   stan-mode
   zygospore
   org
   ox-reveal
   diminish))
; note: install relative line numbers mode

(el-get 'sync my:el-get-packages)


;use spaces, not tabs
(setq-default indent-tabs-mode nil)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(line-number-mode t)
(column-number-mode t)
(electric-pair-mode t)
(global-hl-line-mode t)
(setq inhibit-startup-screen t)

;;switch yes or no prompt to y or n
(fset 'yes-or-no-p 'y-or-n-p)

(set-face-font 'default "Monaco-13")

; start an emacs server if one isn't running
(load "server")
(unless (server-running-p) (server-start))


;;spell checker
(setq ispell-program-name "/usr/local/bin/aspell")

;; setting method and path for using "tramp" to access remote servers
(setq tramp-default-method "ssh")
(add-to-list 'tramp-remote-path 'tramp-own-remote-path)
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))
