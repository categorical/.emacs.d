

(setq package--init-file-ensured t)
(setq custom-file "~/.emacs.d/rubbish.el")

(defun user-load-file (f)
    (load-file (expand-file-name f user-emacs-directory)))


(user-load-file "legacy.el")
(user-load-file "basics.el")
(user-load-file "styles.el")
(user-load-file "keys.el")
(user-load-file "codestyles.el")




