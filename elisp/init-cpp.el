;;; init-cpp.el --- C++ environment configuration
;;; Commentary:
;;; init-cpp.el provides C++ editing environment,
;;; including completion, compilation, and syntax checking
;;; fuctions.

;;; Code:
(add-hook 'c++-mode-hook (lambda()
			   (linum-mode t)
			   (flycheck-mode t)
			   ))

(provide 'init-cpp)
;;; init-cpp.el ends here










