;;; init-preference.el --- user prefered configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; "init-preference.el" provides user-prefered configurations

;;; Code:
(tool-bar-mode 0)

(scroll-bar-mode 0)

(electric-pair-mode t)

(global-hl-line-mode t)

(setq make-backup-files t)

(setq auto-save-default t)

(setq inhibit-startup-message t)

(defalias 'list-buffers 'ibuffer)

(if (eq system-type 'darwin)
    (menu-bar-mode t)
  (menu-bar-mode 0))

(provide 'init-preference)
;;; init-preference.el ends here
