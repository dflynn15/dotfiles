(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(require 'use-package)

;; Load order is important
(load "~/.emacs.d/global-keys.el")
(load "~/.emacs.d/plugins/manifest.el")
(load "~/.emacs.d/themes.el")
(load "~/.emacs.d/header.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" default)))
 '(package-selected-packages
   (quote
    (zoom-window rspec-mode inf-ruby minitest chruby rubocopfmt rubocop golint flycheck-plantuml all-the-icons-dired-mode which-key visual-fill-column json-mode diminish all-the-icons-dred eyebrowse swift-mode jst go-mode multishell emoji-cheat-sheet-plus restclient-helm restclient 0xc nord rainbow-delimiters nord-theme prettier-eslint evil-org org-evil org-mode helm-config markdown-mode use-package flow-minor-mode auto-complete exec-path-from-shell helm-ag js2-mode prettier-js flycheck base16-theme key-chord helm-projectile evil-leader helm evil)))
 '(safe-local-variable-values
   (quote
    ((projectile-project-run-cmd . "mkdir -p build; cd build; cmake ..; make run")
     (projectile-project-compilation-cmd . "mkdir -p build; cd build; cmake ..; make")))))

; Confirm exit
(setq confirm-kill-emacs 'yes-or-no-p)

; Typing isn't fun
(fset 'yes-or-no-p 'y-or-n-p)

(toggle-scroll-bar -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(setq-default inhibit-startup-screen t)
(setq-default inhibit-splash-screen t)
(setq-default truncate-lines 1)

; Default width of 180 chars
(setq-default fill-column 180)

; Default tab of 2
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default evil-shift-width 2)
(setq-default css-indent-offset 2)
(setq js-indent-level 2)
(setq js-basic-offset 2)

; Backups succcckkk
(setq make-backup-files nil)
(setq auto-save-default nil)

; dired ls is broke on macOS
(when (string= system-type "darwin")       
  (setq dired-use-ls-dired nil))

; Default modes
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

;"Make Emacs display emoji correctly on Mac."
(set-fontset-font t 'unicode "Apple Color Emoji" nil 'prepend)

(global-auto-revert-mode t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
