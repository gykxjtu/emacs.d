;;; init-package.el --- initialize package environment -*- lexical-binding: t -*-
;;; Commentary:
;;; "init-package.el" provides package initializing functions,
;;; most of which are function blocks installing or initializing packages.
;;; Also package archive mirrors are setup for Chinese users

;;; Code:
(require 'package)
(setq package-enable-at-startup nil)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (setq package-archives nil)
  (add-to-list 'package-archives (cons "gnu"   (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")) t)
  (add-to-list 'package-archives (cons "melpa" (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")) t)
  (add-to-list 'package-archives (cons "org"   (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/org/")) t)
  )
(package-initialize)

(defun require-package (package &optional archive)
  "Initialize PACKAGE in ARCHIVE before using it."
  (unless (package-installed-p package)
    (unless (assoc package package-archive-contents)
      (package-refresh-contents))
    (package-install package)))

(require-package 'use-package)

(provide 'init-package)
;;; init-package.el ends here
