

(add-hook 'java-mode-hook (lambda()
    (setq c-basic-offset 4
        tab-width 4
        indent-tabs-mode t)))



(add-hook 'sh-mode-hook (lambda()
    (setq sh-basic-offset 4
        ;;tab-width 4
        indent-tabs-mode nil
        comment-padding 0
        comment-start "#")))



