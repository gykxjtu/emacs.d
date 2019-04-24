;;; init-tex --- TeX environment initializing -*- lexical-binding: t -*-
;;; Commentary:
;;; "init-tex.el" provides TeX configuratoin compatible with multiple OS

;;; Code:
(if (eq system-type 'darwin)
    (setenv "PATH" (concat (getenv "PATH") ":" "/Library/TeX/texbin/"))
  nil)

(add-hook 'pdf-view-mode-hook (lambda ()
				(auto-revert-mode t)))

(unless (eq system-type 'darwin)
  ;; MacOS X is not officially supported.
  (use-package pdf-tools
    :ensure t
    :config (progn
	      (pdf-tools-install)))
  )

(use-package org-pdfview
  :ensure t)

(provide 'init-tex)
;;; init-tex.el ends here
