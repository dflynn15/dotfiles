(use-package web-mode
  :ensure t
  :diminish ""
  :bind ("C-c s" . js2-mode-show-element)
  :mode
    (
      ("\\.js\\'" . web-mode)
      ("\\.html?\\'" . web-mode)
      ("\\.phtml?\\'" . web-mode)
      ("\\.tpl\\.php\\'" . web-mode)
      ("\\.erb\\'" . web-mode)
      ("\\.mustache\\'" . web-mode)
      ("\\.djhtml\\'" . web-mode)
      ("\\.jsx$" . web-mode)
    )
  :init (progn
  )
  :config (progn
    (setq web-mode-markup-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
    )
    ;; highlight enclosing tags of the element under cursor
    (setq web-mode-enable-current-element-highlight t)
  )
)
