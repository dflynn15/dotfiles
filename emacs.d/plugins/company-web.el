;; Ensure loaded after company-mode is required
;; Enable JavaScript completion between <script>...</script> etc.
(defadvice company-tern (before web-mode-set-up-ac-sources activate)
  "Set `tern-mode' based on current language before running company-tern."
  (message "advice")
  (if (equal major-mode 'web-mode)
(let ((web-mode-cur-language
        (web-mode-language-at-pos)))
  (if (or (string= web-mode-cur-language "javascript")
    (string= web-mode-cur-language "jsx"))
      (unless tern-mode (tern-mode))
    (if tern-mode (tern-mode -1))))))
(add-hook 'web-mode-hook 'company-mode)


(use-package company-web
  :ensure t
)
