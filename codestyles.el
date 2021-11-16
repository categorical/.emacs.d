

(add-hook 'java-mode-hook (lambda()
    (setq c-basic-offset 4
        tab-width 4
        indent-tabs-mode t)))



(add-hook 'sh-mode-hook (lambda()
    (setq sh-basic-offset 4
        indent-tabs-mode nil
        ;; C-q tab width
        tab-width 4
        ;; disables nested indentation rules after line continuation
        sh-indent-after-continuation 'always
        ;; heredoc/text-mode: tab aligns to a tab stop (M-i)
        tab-always-indent nil
        comment-padding 0
        comment-start "#")))





