(use-package prettier-js
  :ensure t
  :diminish "✨"
  :init (progn
    (add-hook 'js2-mode-hook 'prettier-js-mode)
    (add-hook 'web-mode-hook 'prettier-js-mode)
  )
  :config (progn
    (setq prettier-js-args '(
      "--trailing-comma" "es5"
      "--bracket-spacing" "true"
      "--single-quote" "true"
      "--tab-width" "2"
      "--use-tabs" "false"
    ))
  )
)
