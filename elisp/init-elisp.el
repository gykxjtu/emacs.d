;;; init-elisp.el --- Emacs Lisp mode configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; "init-elisp.el" provides Emacs Lisp modes configurations

;;; Code:
(add-hook 'emacs-lisp-mode-hook (lambda ()
				  (linum-mode t)))

(provide 'init-elisp)
;;; init-elisp.el ends here
