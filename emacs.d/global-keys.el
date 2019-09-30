;define global keys
(global-set-key (kbd "C-SPC") nil)
(global-set-key (kbd "C-SPC w l") 'windmove-right)
(global-set-key (kbd "C-SPC w h") 'windmove-left)
(global-set-key (kbd "C-SPC w j") 'windmove-down)
(global-set-key (kbd "C-SPC w k") 'windmove-up)
(global-set-key (kbd "C-SPC w s h") (lambda () (interactive) (split-window-vertically) (balance-windows)))
(global-set-key (kbd "C-SPC w s v") (lambda () (interactive) (split-window-horizontally) (balance-windows)))
(global-set-key (kbd "C-SPC r") 'chruby-use-corresponding)

(defun flynn-git-clone(url)
  "Clone a Git Project"
  (interactive "xGit URL:")
  (let
    (
      (projectPath (concat "~/github/" (car (split-string (car (last (split-string url "/"))) "\\."))))
    )
    (shell-command (concat "git clone " url projectPath))
    (eyebrowse-create-window-config)
    (dired (concat projectPath))
  )
)

(global-set-key (kbd "C-SPC g c") 'flynn-git-clone)


(defun xah-copy-file-path (&optional @dir-path-only-p)
  "Copy the current buffer's file path or dired path to `kill-ring'.
Result is full path.
If `universal-argument' is called first, copy only the dir path.

If in dired, copy the file/dir cursor is on, or marked files.

If a buffer is not file and not dired, copy value of `default-directory' (which is usually the “current” dir when that buffer was created)

URL `http://ergoemacs.org/emacs/emacs_copy_file_path.html'
Version 2017-09-01"
  (interactive "P")
  (let (($fpath
         (if (string-equal major-mode 'dired-mode)
             (progn
               (let (($result (mapconcat 'identity (dired-get-marked-files) "\n")))
                 (if (equal (length $result) 0)
                     (progn default-directory )
                   (progn $result))))
           (if (buffer-file-name)
               (buffer-file-name)
             (expand-file-name default-directory)))))
    (kill-new
     (if @dir-path-only-p
         (progn
           (message "Directory path copied: 「%s」" (file-name-directory $fpath))
           (file-name-directory $fpath))
       (progn
         (message "File path copied: 「%s」" $fpath)
         $fpath )))))

(global-set-key (kbd "C-SPC f p") 'xah-copy-file-path)
