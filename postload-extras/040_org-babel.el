;; babel language system
;;load language to be evaluated in source blocks
(setenv "NODE_PATH"
        (concat
         "/Users/vasilis/org/node_modules" ":"
         (getenv "NODE_PATH")
         )
        )
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (shell . t)
   (python . t)
   (ipython . t)
   (ditaa . t)
   (perl . t)
   (gnuplot t)
   (js . t)
   (ditaa . t)
   (dot . t)
   ;; (cpp . t)
   (css . t)
   (sclang . t)
   (latex . t)))

(setq org-export-babel-evaluate t)

(setq org-babel-exp-src-block t)
