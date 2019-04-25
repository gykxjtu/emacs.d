;;; init-config.el --- user configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; "init-config.el" provides user-installed packages configuring user-preferred
;;; environment, which usually does not include modes packages.

;;; Code:
(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode t))

(use-package ace-window
  :ensure t
  :init (progn
	  (global-set-key [remap other-window] 'ace-window)
	  (custom-set-faces
	   '(aw-leading-char-face
	     ((t (:inherit ace-jump-face-foreground :height 3.0)))))
	  ))

(use-package counsel
  :ensure t)

(use-package swiper
  :ensure t
  :config (progn
	    (ivy-mode 1)
	    (setq ivy-use-virtual-buffers t)
	    (setq enable-recursive-minibuffers t)
	    ;; enable this if you want `swiper' to use it
	    ;; (setq search-default-mode #'char-fold-to-regexp)
	    (global-set-key "\C-s" 'swiper)
	    (global-set-key (kbd "C-c C-r") 'ivy-resume)
	    (global-set-key (kbd "<f6>") 'ivy-resume)
	    (global-set-key (kbd "M-x") 'counsel-M-x)
	    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
	    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
	    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
	    (global-set-key (kbd "<f1> l") 'counsel-find-library)
	    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
	    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
	    (global-set-key (kbd "C-c g") 'counsel-git)
	    (global-set-key (kbd "C-c j") 'counsel-git-grep)
	    (global-set-key (kbd "C-c k") 'counsel-ag)
	    (global-set-key (kbd "C-x l") 'counsel-locate)
	    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
	    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
	    ))

(use-package auto-complete
  :ensure t
  :init (progn
	  (ac-config-default)
	  (global-auto-complete-mode t)
	  ))

(require-package 'auctex)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t))

(use-package yasnippet
  :ensure t
  :config (progn
	    (yas-global-mode t)
	    (use-package yasnippet-snippets
	      :ensure t)))

(use-package beacon
  :ensure t
  :config (beacon-mode t))

(use-package hungry-delete
  :ensure t
  :config (global-hungry-delete-mode t))

(use-package multiple-cursors
  :ensure t
  :config (progn
	    (global-set-key (kbd "C->") 'mc/mark-next-like-this)
	    (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
	    (global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)))

(provide 'init-config)
;;; init-config.el ends here
