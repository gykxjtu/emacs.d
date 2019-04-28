;;; init-org.el --- org mode configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; "init-org.el" provides org-mode configurations

;;; Code:
(add-hook 'org-mode-hook (lambda ()
			   (linum-mode t)
			   (yas-minor-mode t)))

(use-package org
  :ensure t)

(use-package org-bullets
  :ensure t
  :config (progn
	    (add-hook 'org-mode-hook (lambda () (org-bullets-mode t)))
	    ))

(provide 'init-org)
;;; init-org.el ends here
