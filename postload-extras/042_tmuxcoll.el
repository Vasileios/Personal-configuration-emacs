;;tmux for collaborative editing
(require 'server)
;; some systems don't auto-detect the socket dir, so specify it here and for the client:
(setq server-socket-dir "/tmp/emacs-shared")
(server-start)

;; highlight-changes-mode is very handy when collaborating:
(global-highlight-changes-mode t)
;; Keys for moving back and forth between changes, set these to what
;; you prefer:
(global-set-key (kbd "<f5>") 'highlight-changes-previous-change)
(global-set-key (kbd "<f6>") 'highlight-changes-next-change)
(global-set-key (kbd "<f7>") 'highlight-changes-rotate-faces)
(global-set-key (kbd "<f8>") 'highlight-changes-remove-highlight)
