(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(setq package-menu-async nil)

(eval-when-compile
  (require 'use-package))
;; Stay stable! Stay safe!
;; (setq use-package-always-pin "melpa-stable")


;; Load order is important
(load "~/.emacs.d/global-keys.el")
(load "~/.emacs.d/plugins/manifest.el")
(load "~/.emacs.d/themes.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" default))
 '(package-selected-packages
   '(prettier solaire-mode all-the-icons-completion web-mode lsp-mode rustic flycheck-rust rust-mode rust-playground helm evil-org undo-fu zoom-window yafolding which-key visual-fill-column markdown-mode magit chruby ruby-electric tide typescript-mode prettier-js json-mode js2-mode add-node-modules-path all-the-icons-ivy-rich ivy-posframe counsel-projectile ivy-hydra counsel wgrep golint go-mode diminish flycheck multi-vterm vterm eyebrowse exec-path-from-shell evil-goggles key-chord evil-leader evil-collection evil emojify base16-theme company auto-complete use-package))
 '(warning-suppress-types '((comp)))
 '(zoom-window-mode-line-color "base16-atelier-seaside-light"))

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

; Auto-complete parens/curly etc
(electric-pair-mode 1)

; Default width of 180 chars
(setq-default fill-column 180)

; Tabs are spaces with 2
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default evil-shift-width 2)
(setq-default css-indent-offset 2)
(setq js-indent-level 2)
(setq js-basic-offset 2)

  
; (setq indent-line-function 'insert-tab)

; Backups succcckkk
(setq make-backup-files nil)
(setq auto-save-default nil)

;"Make Emacs display emoji correctly on Mac."
;; (set-fontset-font t 'unicode "Apple Color Emoji" nil 'prepend)

(global-auto-revert-mode t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
