(use-package typescript-mode
  :ensure t
  :hook ((typescript-mode . (lambda ()
                              (my-tide-setup-hook)
                              (company-mode))))
  :bind ((:map typescript-mode-map
          ("C-SPC t d" . tide-documentation-at-point)
          ("C-SPC t r" . tide-refactor)
          ("C-SPC t a g" . tide-references)
        ))
  :config (progn
    (add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
    (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
  )
)
;; tide: TypeScript Interactive Development Environment for Emacs
;; https://github.com/ananthakumaran/tide
(use-package tide
  :ensure t
  :after typescript-mode
  :config
  (defun my-tide-setup-hook ()
    ;; configure tide
    (tide-setup)
    ;; highlight identifiers
    (tide-hl-identifier-mode +1)
    ;;enable eldoc-mode
    (eldoc-mode)
    ;; enable flycheck
    (flycheck-mode)
    ;; format typescript files using prettier
    (prettier-js-mode)
    ;; company-backends setup
    (set (make-local-variable 'company-backends)
         '((company-tide company-files :with company-yasnippet)
           (company-dabbrev-code company-dabbrev))))
  ;; use 2 space indentation
  (setq typescript-indent-level 2)
  ;; add tslint checker for flycheck
  (flycheck-add-next-checker 'typescript-tide
                             'typescript-tslint)
  (setq tide-completion-detailed t)
  (add-hook 'tide-mode-hook
            (lambda ()
              (add-hook 'kill-buffer-hook #'+javascript|cleanup-tide-processes nil t))))
(defun +javascript|cleanup-tide-processes ()
  "Clean up dangling tsserver processes if there are no more buffers with
`tide-mode' active that belong to that server's project."
  (when tide-mode
    (unless (cl-loop with project-name = (tide-project-name)
                     for buf in (delq (current-buffer) (buffer-list))
                     if (and (buffer-local-value 'tide-mode buf)
                             (with-current-buffer buf
                               (string= (tide-project-name) project-name)))
                     return buf)
      (kill-process (tide-current-server)))))
