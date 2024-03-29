;;; init-tex --- TeX environment initializing -*- lexical-binding: t -*-
;;; Commentary:
;;; "init-tex.el" provides TeX configuratoin compatible with multiple OS

;;; Code:
(if (eq system-type 'darwin)
    (setenv "PATH" (concat (getenv "PATH") ":" "/usr/local/bin"))
  nil)

(unless (eq system-type 'darwin)
  ;; MacOS X is not officially supported.
  (progn
  (use-package pdf-tools
    :ensure t
    :config (pdf-tools-install))
  (use-package org-pdftools
    :ensure t
    :config (add-hook 'pdf-view-mode-hook (lambda ()
					    (auto-revert-mode t))))))

(provide 'init-tex)
;;; init-tex.el ends here
