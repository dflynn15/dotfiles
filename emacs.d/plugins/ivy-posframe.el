(use-package ivy-posframe
  :ensure t
  :config
    ;; Different command can use different display function.
    (setq ivy-posframe-height-alist '((swiper . 20)
                                      (t      . 40)))

    (setq ivy-posframe-display-functions-alist
          '((swiper          . ivy-display-function-fallback)
            (complete-symbol . ivy-posframe-display-at-point)
            (counsel-M-x     . ivy-posframe-display-at-window-center)
            (t               . ivy-posframe-display)))

    (setq ivy-posframe-parameters
          '((left-fringe . 8)
            (right-fringe . 8)))

    (ivy-posframe-mode 1)

  )
