;;; init-preference.el --- user prefered configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; "init-preference.el" provides user-prefered configurations

;;; Code:
(tool-bar-mode 0)

(menu-bar-mode 0)

(scroll-bar-mode 0)

(electric-pair-mode t)

(global-hl-line-mode t)

(setq make-backup-files nil)

(setq auto-save-default nil)

(setq inhibit-startup-message t)

(defalias 'list-buffers 'ibuffer)

(provide 'init-preference)
;;; init-preference.el ends here
