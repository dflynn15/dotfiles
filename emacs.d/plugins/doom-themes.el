(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  ;; (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package solaire-mode
  :ensure t
  :init (solaire-global-mode +1)
)
