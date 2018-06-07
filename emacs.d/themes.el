; Set font size. Calculated as 1/10pt
(set-face-attribute 'default nil :height 120)


(load-theme 'nord t)
(defvar *currenttheme* 'nord)
(defvar *theme-dark* 'base16-ocean)
(defvar *theme-light* 'base16-tomorrow)
(defvar *theme-nord* 'nord)

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
        ((eq *currenttheme* *theme-light*) (nexttheme *theme-nord*))
        ((eq *currenttheme* *theme-nord*) (nexttheme *theme-dark*))
        (t (nexttheme *theme-dark*))))

; default frame is fullscreen and has no scrollbars
(setq default-frame-alist '((fullscreen . fullscreen) (vertical-scroll-bars . nil)))

(global-set-key (kbd "C-SPC t") 'toggletheme)
