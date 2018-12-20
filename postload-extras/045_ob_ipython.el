;;ob-ipython

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


(require 'ob-ipython)


;;;dont need to answer when evaluate source blocks

;;(setq org-confirm-babel-evaluate nil)

;;; display/update images in the buffer after I evaluate
;;(add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)

;;set ipython3
;;(setq python-shell-interpreter (expand-file-name "~/anaconda3/bin/ipython3"))

;; (setq python-shell-interpreter (expand-file-name "~/anaconda3/envs/py36/bin/ipython"))

;; (setq ob-ipython-command "~/anaconda3/envs/py36/bin/jupyter")

 ;; (setq python-shell-interpreter (expand-file-name "~/anaconda2/envs/anaconda3/bin/ipython"))

;; (setq ob-ipython-command "~/anaconda2/envs/anaconda3/bin/jupyter")
