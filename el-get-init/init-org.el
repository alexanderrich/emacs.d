;org shortcut setup
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(require 'ox-latex)
(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass\[presentation\]\{beamer\}"
               ("\\section\{%s\}" . "\\section*\{%s\}")
               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
               ("\\Subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))


(setq org-directory "~/Dropbox/org/")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Dropbox/org/TODO.org" "unsorted")
      "* TODO %?")
      ("j" "Journal" plain (file+datetree "~/Dropbox/org/journal.org")
       "%?")
      ("n" "Notes" entry (file "~/Dropbox/org/notes.org")
       "* %?")))
(setq org-agenda-files '("~/dropbox/org/TODO.org"
                         "~/dropbox/org/mushroom.org"
                         "~/dropbox/org/categoricalapav.org"))
(add-hook 'org-mode-hook 'turn-on-auto-fill)
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-mobile-inbox-for-pull "~/Dropbox/org/from-mobile.org")
 (setq org-todo-keywords
       '((sequence "TODO" "|" "DONE" "CANCELLED")))
(setq org-tags-column -200)
(setq org-refile-targets (quote ((nil :maxlevel . 2)
                                 (org-agenda-files :maxlevel . 2))))
