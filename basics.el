
(setq inhibit-startup-screen t)

(setq make-backup-files nil)
(setq auto-save-default nil)


(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")))
(package-initialize)
(unless package-archive-contents
    (package-refresh-contents))

(defun package-ensure(&rest ps)
    (mapcar (lambda(p)
        (unless (package-installed-p p)
            (package-install p))
        (require p)) ps))

(package-ensure 'company)
(add-hook 'after-init-hook 'global-company-mode)

(package-ensure 'company-c-headers)
(add-to-list 'company-backends 'company-c-headers)
;;(add-to-list 'company-c-headers-path-system "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/")

(package-ensure 'markdown-mode)
;;(setq markdown-command "/opt/pythonmarkdown/bin/markdown_py")
(setq markdown-command
    (cond
        ((eq system-type 'windows-nt)
            "D:\\programs\\ruby\\bin\\ruby.exe D:\\redev\\redcarpet\\bin\\redcarpet --parse fenced_code_blocks")
        (t "/usr/bin/lowdown")))
        ;;(t "/opt/redcarpet/bin/redcarpet --parse fenced_code_blocks")))
(setq markdown-live-preview-delete-export 'delete-on-export)
(setq markdown-split-window-direction 'right)
(add-to-list 'markdown-css-paths (expand-file-name "resources/markdown.css" user-emacs-directory))


(package-ensure 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))


(add-hook 'python-mode-hook (lambda()
    (setq indent-tabs-mode nil tab-width 4)
    ;; indent
    ;;(electric-indent-mode 0)
    ;;(setq indent-line-function 'insert-tab)
    ))

