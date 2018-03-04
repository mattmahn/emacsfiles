; emacs config bootstrap

; prevent emacs from automatically adding a package section to this file
; (package-initialize)

; prevent emacs from saving customizations to this file
(setq custom-file (concat user-emacs-directory ".emacs-customize.el"))

; always follow symlinks
(setq vc-follow-symlinks t)

(org-babel-load-file "~/.emacsfiles/emacs-config.org")
