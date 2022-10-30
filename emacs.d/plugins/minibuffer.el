(use-package vertico
    :ensure t
    :custom
	(vertico-count 15)                    ; Number of candidates to display
	(vertico-cycle nil) ; Go from last to first candidate and first to last (cycle)?
    :init
	(vertico-mode)
)

(use-package vertico-directory
  :after vertico
  :ensure nil
  ;; More convenient directory navigation commands
  :bind (:map vertico-map
              ("C-j" . vertico-directory-enter)
	      ("C-l" . vertico-directory-up)
              ("DEL" . vertico-directory-delete-char)
              ("M-DEL" . vertico-directory-delete-word))
  ;; Tidy shadowed file names
  :hook (rfn-eshadow-update-overlay . vertico-directory-tidy))

(use-package vertico-reverse
  :after vertico
  :ensure nil
)

(use-package orderless
    :ensure t
    :init
    (setq completion-styles '(orderless)
          completion-category-defaults nil
          completion-category-overrides '((file (styles partial-completion)))))

(use-package savehist
    :ensure t
    :init
    (savehist-mode))

(use-package marginalia
  :ensure t
  :config (marginalia-mode))

(use-package consult
  :ensure t
  :config
  (autoload 'projectile-project-root "projectile")
  (setq consult-project-function (lambda (_) (projectile-project-root)))
)
