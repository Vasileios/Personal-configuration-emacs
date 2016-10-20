

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                 ;;;
;;;                   Vasilis Agiomyrgianakis experiments with                      ;;;
;;;                          Org-Mode Configuration file                            ;;;
;;;                             Oct 18, 2016 (20:25)                                ;;;
;;;                                                                                 ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Package --- Load configuration files.
;; Require packages: org-bullets, htmlize up to 1.4, auto-complete-mode, elisp/emms, minted

;; Org-mode

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; Show bullets as UTF-8 character instead of asterisks in org-mode

(require 'org-bullets)
(add-hook 'org-mode-hook
          (lambda () (org-bullets-mode 1)))


;;Visual Line mode provides support for editing by visual lines.
;; It turns on word-wrapping in the current buffer.

(global-visual-line-mode 1) ;; word-wrapping for all buffers

;; Display images in the buffer

(setq org-startup-with-inline-images t)

;; Latex. Set latex path to emacs
;; add minted to latex-listings
(require 'org)
(setq exec-path (append exec-path '("/usr/texbin")))
(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")))

;;(setq org-latex-listings 'minted)

(add-to-list 'org-latex-packages-alist '("" "minted"))

(setq org-export-latex-listings 'minted)
(add-to-list 'org-export-latex-packages-alist '("" "minted"))

(setq org-latex-listings 'minted)

(setq org-latex-custom-lang-environments
      '(
        (emacs-lisp "common-lispcode")
        ))
(setq org-latex-minted-options
      '(("frame" "lines")
        ("fontsize" "\\scriptsize")
        ("linenos" "")))


(setq org-latex-to-pdf-process
      
   
   
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        
        ))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (latex . t)))
   
;; Use syntax highlighting in source block while editing

(setq org-src-fontify-natively t)

;; set auto-complete-mode

(require 'auto-complete)

;; Loads latex auto-complete
(require 'ac-math)
(add-to-list 'ac-modes 'latex-mode)
(defun ac-latex-mode-setup ()
  (setq ac-sources
        (append '(ac-source-math-latex ac-source-latex-commands  ac-source-math-unicode)
                ac-sources))
  )
(add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)

;;Emms - set emms (emacs_multimedia_system) path to emacs

(add-to-list 'load-path "~/.emacs.d/personal/packages/elisp/emms/")

(require 'emms-setup)
(emms-all)
(emms-default-players)

;; set the path to the sound libraries

(setq emms-source-file-default-directory "~/Music/iTunes/iTunes Media/Music")

;; set player (ex: VLC)

(require 'emms-player-vlc)
(emms-standard)
(setq emms-player-vlc-command-name
      "/Applications/VLC.app/Contents/MacOS/VLC")

(require 'emms-volume-amixer)
(global-set-key (kbd "C-c +") 'emms-volume-mode-plus)
(global-set-key (kbd "C-c -") 'emms-volume-mode-minus)

(mapcar (lambda (path)
          (load-file path))
        (file-expand-wildcards "~/.emacs.d/personal/postload/*.el"))

(provide 'init.el)

;; init.el ends here

