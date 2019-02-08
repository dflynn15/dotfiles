(defun flynn-header ()
  (setq header-line-format
    (list
      (if (stringp (buffer-file-name))
        (eval (concat " ▼ ../" (substring (buffer-file-name) 16 nil)))
      "✨"
      )
      "  "
      ;(format-time-string "%I:%M %p")
  ))
)

;update the header whenever the buffer-list changes
(add-hook 'buffer-list-update-hook 'flynn-header)

;set the header intially
(flynn-header)
