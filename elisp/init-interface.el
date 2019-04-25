;;; init-interface.el --- user interface configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; "init-interface.el" provides user interface configurations

;;; Code:
(setq initial-scratch-message ";; Die Luft der Freiheit weht\n\n")

(if (eq system-type 'darwin)
    (set-frame-font "Monaco-20"))

(if (eq system-type 'gnu/linux)
    (set-frame-font "DejaVu Sans Mono-16"))

(use-package nimbus-theme
  :ensure t
  :config (load-theme 'nimbus))

(use-package smart-mode-line-powerline-theme
  :ensure t
  :config (progn
	    (sml/setup)
	    ))

(provide 'init-interface)
;;; init-interface.el ends here
