
(setq inhibit-startup-screen t)

(setq make-backup-files nil)
(setq auto-save-default nil)


(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "http://melpa.org/packages/")))
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
(setq markdown-command "/opt/redcarpet/bin/redcarpet --parse fenced_code_blocks")
(setq markdown-live-preview-delete-export 'delete-on-export)
(setq markdown-split-window-direction 'right)
(add-to-list 'markdown-css-paths (expand-file-name "resources/markdown.css" user-emacs-directory))



