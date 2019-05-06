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

(use-package auto-complete-clang-async
  :ensure t
  :config (progn
	    (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
	    (setq ac-source '(ac-source-clang-async))
	    (ac-clang-launch-completion-process)
	    (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
	    (add-hook 'auto-complete-mode-hook 'ac-cc-mode-setup)))

(provide 'init-cpp)
;;; init-cpp.el ends here










