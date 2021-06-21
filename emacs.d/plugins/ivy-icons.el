(use-package all-the-icons-ivy-rich
  :ensure t
  :init
    (all-the-icons-ivy-rich-mode 1)
)

(use-package ivy-rich
  :ensure t
  :after all-the-icons-ivy-rich
  :init
    (ivy-rich-mode 1)
    (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line)
    :config
      ivy-rich-modify-column
        'ivy-switch-buffer
        'ivy-rich-switch-buffer-major-mode
        '(:width 20 :face error)
      )
)
