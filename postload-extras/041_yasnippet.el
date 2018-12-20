;; text expansion

(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(add-hook 'org-mode-hook
          '(lambda ()
          ;;   (define-key org-mode-map [(tab)] 'yas-expand)
             (setq yas-trigger-key "<tab>")
             ))
