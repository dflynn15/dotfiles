;define global keys
(global-set-key (kbd "C-SPC") nil)
(global-set-key (kbd "C-SPC w l") 'windmove-right)
(global-set-key (kbd "C-SPC w h") 'windmove-left)
(global-set-key (kbd "C-SPC w j") 'windmove-down)
(global-set-key (kbd "C-SPC w k") 'windmove-up)
(global-set-key (kbd "C-SPC w s h") (lambda () (interactive) (split-window-vertically) (balance-windows)))
(global-set-key (kbd "C-SPC w s v") (lambda () (interactive) (split-window-horizontally) (balance-windows)))
