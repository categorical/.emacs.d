


(global-set-key (kbd "C-x !") 'kill-emacs)
(global-set-key (kbd "C-x c") (lambda()
    (interactive)
    (save-some-buffers t)
    (compile "make" t)))



