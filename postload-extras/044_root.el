;;; root-help.el --- Helper functions for ROOT
;; -*- mode: emacs-lisp -*-
;;
;; $Id: root-help.el.in,v 1.1 2002/07/31 20:44:26 rdm Exp $
;;
;;  Emacs lisp functions to help write ROOT based projects
;;  Copyright (C) 2002, 2003 Christian Holm Christensen
;;
;;  This program is free software; you can redistribute it and/or
;;  modify it under the terms of the GNU General Public License as
;;  published by the Free Software Foundation; either version 2 of the
;;  License, or (at your option) any later version.
;;
;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;  General Public License for more details.
;;
;;  You should have received a copy of the GNU General Public License
;;  along with this program; if not, write to the Free Software
;;  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
;;  02110-1301, USA
;;
;; Author: Christian Holm Christensen <cholm@nbi.dk>
;; Maintainer: Christian Holm Christensen <cholm@nbi.dk>
;; Created: 20:34:51 Thursday 05/09/02 CEST
;; Version: 1.2
;; Keywords: oop programming
;;

(setq load-path (cons "/usr/local/share/emacs/site-lisp" load-path))

;;(require 'root-help)

(defun root-c++-mode-hook ()
           "Hook for C++ mode - binding ROOT functions"
           (define-key c++-mode-map "\C-crc"  'root-class)
           (define-key c++-mode-map "\C-crh"  'root-header-skel)
           (define-key c++-mode-map "\C-crs"  'root-source-skel)
           (define-key c++-mode-map "\C-cri"  'root-include-header)
           (define-key c++-mode-map "\C-crm"  'root-main)
           (define-key c++-mode-map "\C-crl"  'root-insert-linkdef)
           (define-key c++-mode-map "\C-crp"  'root-insert-pragma)
           (define-key c++-mode-map "\C-crx"  'root-shell)
           (define-key c++-mode-map "\C-crg"  'root-send-line-to-root)
           (define-key c++-mode-map "\C-crr"  'root-send-region-to-root)
           (define-key c++-mode-map "\C-crb"  'root-send-buffer-to-root)
           (define-key c++-mode-map "\C-crf"  'root-execute-file))
         (add-hook 'c++-mode-hook 'root-c++-mode-hook)
