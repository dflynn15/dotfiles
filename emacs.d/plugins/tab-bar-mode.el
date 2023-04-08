;; Possibly switch to perspective
(tab-bar-mode 1)

(global-set-key (kbd "C-SPC s c") 'tab-new)
(global-set-key (kbd "C-SPC s n") 'tab-next)
(global-set-key (kbd "C-SPC s p") 'tab-previous)
(global-set-key (kbd "C-SPC s k") 'tab-close)

;; Ref https://www.rousette.org.uk/archives/using-the-tab-bar-in-emacs/
(defun my/name-tab-by-project-or-default ()
  "Return project name if in a project, or default tab-bar name if not.
The default tab-bar name uses the buffer name."
  (let ((project-name (projectile-project-name)))
    (if (string= "-" project-name)
        (tab-bar-tab-name-current)
      (projectile-project-name))))

(setq tab-bar-tab-name-function #'my/name-tab-by-project-or-default)
;(setq tab-bar-)

