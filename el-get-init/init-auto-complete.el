(require 'auto-complete-config)
(ac-config-default)
; auto-complete everywhere but the minibuffer
(defun auto-complete-mode-maybe ()
  "No maybe for you. Only AC!"
  (unless (minibufferp (current-buffer))
    (auto-complete-mode 1)))
(global-auto-complete-mode t)
