;;; init.el --- Entrance of Emacs configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; "init.el" is the entrance of configurations on Emacs,
;;; which is located at "$HOME/.emacs.d/"
;;; DO NOT remove it unless necessary.

;;; Code:
;; Automatically added stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3efa9b1da5ed44ccb1d04f737cbe2680fe145c4406f16545d2deacb9dc3dd142" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "d070fe58f0e013d1b51b3c05c6827fea555a7eb3f58c6bc16d87ca50dda35d26" default)))
 '(package-selected-packages
   (quote
    (luvent-theme multiple-cursors ahungry-delete hungry-delete beacon elpy flycheck soap-client seq ntlm map let-alist flymake python org auctex org-pdfview pdf-tools smart-mode-line-powerline-theme smart-mode-line org-bullets nimbus-theme auto-complete counsel swiper ace-window try which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; add "elisp/" to emacs load path,
;; which contains most of the user-defined packages

(add-to-list 'load-path (expand-file-name "elisp/" user-emacs-directory))

(require 'init-package)

(require 'init-config)

(require 'init-preference)

(require 'init-interface)

(require 'init-org)

(require 'init-tex)

(require 'init-elisp)

(require 'init-python)

(require 'init-cpp)
;;; init.el ends here
