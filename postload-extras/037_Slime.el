;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/opt/sbcl/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(add-to-list 'load-path "/Applications/slime-2.20/")
(add-to-list 'load-path "/Applications/cm-3.10.2/")
;;(load "etc/xemacs/cm.el")
;;(enable-cm-commands)
