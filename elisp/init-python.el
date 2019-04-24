;;; init-python.el --- python environment configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; init-python.el provides python editing environment
;;; including autocomplete, syntex check, compiling, executing,
;;; etc.

;;; Code:
(use-package elpy
  :ensure t
  :init (elpy-enable))

(provide 'init-python)
;;; init-python.el ends here
