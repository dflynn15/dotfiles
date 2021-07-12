; Set font size. Calculated as 1/10pt
(set-face-attribute 'default nil :height 140)
(global-hl-line-mode +1)


(load-theme 'base16-eighties t)
(defvar *currenttheme* 'base16-oceanicnext)
(defvar *theme-dark* 'base16-ocean)
(defvar *theme-light* 'base16-tomorrow)
(defvar *theme-alt* 'base16-oceanicnext)

(defun disable-all-themes (&rest args)
  (mapcar #'disable-theme custom-enabled-themes))

(defun store-current-theme (&rest args)
  (setq *current-theme* (car args)))

(advice-add 'load-theme :before #'disable-all-themes)
(advice-add 'load-theme :after #'store-current-theme)

; Show next theme
(defun nexttheme (theme)
  (if (eq theme 'default)
      (disable-theme *currenttheme*)
    (load-theme theme t))
  (setq *currenttheme* theme))

; Toggle theme
(defun toggletheme ()
  (interactive)
  (cond ((eq *currenttheme* *theme-dark*) (nexttheme *theme-light*))
        ((eq *currenttheme* *theme-light*) (nexttheme *theme-alt*))
        ((eq *currenttheme* *theme-alt*) (nexttheme *theme-dark*))
        (t (nexttheme *theme-dark*))))

; default frame is fullscreen and has no scrollbars
;; (setq default-frame-alist '((fullscreen . fullscreen) (vertical-scroll-bars . nil)))


(global-set-key (kbd "C-SPC t") 'toggletheme)

(define-globalized-minor-mode 
    global-text-scale-mode
    text-scale-mode
    (lambda () (text-scale-mode 1)))

(defun global-text-scale-adjust (inc) (interactive)
    (text-scale-set 1)
    (kill-local-variable 'text-scale-mode-amount)
    (setq-default text-scale-mode-amount (+ text-scale-mode-amount inc))
    (global-text-scale-mode 1)
  )

(global-set-key (kbd "M-+")
  '(lambda () (interactive) (global-text-scale-adjust 1))
)
(global-set-key (kbd "M--")
  '(lambda () (interactive) (global-text-scale-adjust -1))
)

