(defvar dropbox-path ""
  "Variable that points to the proper Dropbox path.")

(cond
  ((file-exists-p "~/Dropbox (Personal)/") (setq dropbox-path "~/Dropbox (Personal)/"))
  ((file-exists-p "~/Dropbox/") (setq dropbox-path "~/Dropbox/"))
)

(defun org-scratch()
  "make a new buffer with org-mode"
  (interactive)
  (evil-window-new nil nil)
  (org-mode)
)

(defun org-task-capture ()
  "Capture a task with my default template."
  (interactive)
  (org-capture nil "a")
)

(use-package org
  :if (file-exists-p (concat dropbox-path "org/tasks.txt"))
  :ensure t
  :diminish ""
  :bind (
    ("C-SPC o c" . org-task-capture)
    ("C-SPC o t" . org-todo-list)
    ("C-SPC o a" . org-agenda)
    ("C-SPC o n" . org-scratch)
    ("C-SPC o T" . org-tags-view)
  )
  :mode (("\\.txt\\'" . org-mode))
  :config(progn
    (require 'ox-md)
    ;;look into swapping with txt, org-agenda-file-regexp
    (setq org-agenda-file-regexp "\\`[^.].*\\.txt\\'")
    (setq org-agenda-files `(,(concat dropbox-path "org")))
    (setq org-refile-use-outline-path 'file)
    (setq org-outline-path-complete-in-steps nil)
    (setq org-export-with-toc nil)
    (setq org-refile-targets '(
      ("tasks.txt" . (:level . 1))
    ))
    (setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "|" "DONE" "CANCELED"))
    )
    (setq org-capture-templates
      `(
        (
          "a" "My TODO task format." entry (file ,(concat dropbox-path "org/tasks.txt"))
          "* TODO %? %^g \n:PROPERTIES: \n:CREATED: %T \n:END:"
        )
      )
    )
    (setq org-agenda-restore-windows-after-quit t)
  )
)
