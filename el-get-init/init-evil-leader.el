(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
 "f" 'helm-find-files
 "b" 'helm-mini
 "k" 'kill-buffer
 "s" 'save-buffer
 "p" 'helm-projectile
 "o" 'switch-window
 "x" 'helm-M-x
 "m" 'magit-status
 "g" 'google-this
 "0" 'delete-window
 "1" 'zygospore-toggle-delete-other-windows
 "2" 'split-window-below
 "3" 'split-window-right
 "e" 'eval-last-sexp
 "c" 'evil-ace-jump-char-mode
 "w" 'evil-ace-jump-word-mode
 "l" 'evil-ace-jump-line-mode)
