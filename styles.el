

(set-face-foreground 'font-lock-preprocessor-face "white")
(set-face-foreground 'font-lock-string-face "brightmagenta")
(set-face-foreground 'font-lock-keyword-face "brightyellow")
(set-face-foreground 'font-lock-type-face "brightgreen")
(set-face-foreground 'font-lock-function-name-face "blue")
(set-face-foreground 'font-lock-variable-name-face "brightred")
(set-face-foreground 'font-lock-constant-face "brightwhite")
(set-face-foreground 'minibuffer-prompt "tomato")

(setq-default 
    c-basic-offset 2
    indent-tabs-mode nil)

;;(setq split-width-threshold 0) ;; 0 is horizontally vsplit

;(global-linum-mode t)
(if (version<= "29.1" emacs-version)
    (global-display-line-numbers-mode)
    (global-linum-mode t))

(setq compilation-scroll-output t)

