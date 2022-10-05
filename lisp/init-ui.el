;;; init-ui.el --- init ui packages                  -*- lexical-binding: t; -*-

;; Copyright (C) 2022

;; Author:  <lizqwerscott@gmail.com>
;; Keywords:

;;; Commentary:

;;; Code:

;;; Font

;;; Theme
;; (use-package doom-themes
;;   :ensure t)

;; (require 'lazycat-theme)
;; (lazycat-theme-load-dark)

;;; Background
(setq default-frame-alist
      '((width . 90)
        (height . 50)
        (alpha-background . 100)))

;;; UI
(setq frame-resize-pixelwise t)
(dotimes (n 3)
  (toggle-frame-maximized))
(global-hl-line-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-buffer-file-name-style
        'file-name)
  (setq doom-modeline-continuous-word-count-modes '(markdown-mode gfm-mode org-mode)))

;; (use-package nyan-mode
;;   :ensure t
;;   :hook (doom-modeline-mode . nyan-mode))

;; Show the current function name in the header line
;; (which-function-mode)
;; (setq-default header-line-format
;;               '((which-func-mode ("" which-func-format " "))))
;; (setq mode-line-misc-info
;;             ;; We remove Which Function Mode from the mode line, because it's mostly
;;             ;; invisible here anyway.
;;             (assq-delete-all 'which-func-mode mode-line-misc-info))

;; (add-hook 'after-init-hook
;;           #'(lambda ()
;;               (if (get-buffer "*Netease-Cloud-Music*")
;;                   (netease-cloud-music-add-header-lyrics))))

;; (use-package awesome-tray
;;   :hook (after-init . awesome-tray-mode)
;;   :custom
;;   (awesome-tray-active-modules
;;    '( "git" "mode-name" "location" "flymake" "date")
;;    "My tray config"))

;; (use-package sort-tab
;;   :hook (after-init . sort-tab-mode))

;;; Icons
;; (require-package 'all-the-icons)

;; (use-package all-the-icons-completion
;;   :ensure t
;;   :hook (marginalia-mode . #'all-the-icons-completion-marginalia-setup)
;;   :init
;;   (all-the-icons-completion-mode))

;;; Git message
;; (use-package git-gutter
;;   :ensure t
;;   :config
;;   (global-git-gutter-mode +1)
;;   (setq git-gutter:modified-sign " ")
;;   (setq git-gutter:added-sign "+")
;;   (setq git-gutter:deleted-sign "-")
;;   (setq git-gutter:hide-gutter t))

;; (use-package vc-msg
;;   :ensure t)

;; (use-package symbol-overlay
;;   :ensure t
;;   :hook (prog-mode . symbol-overlay-mode))

;;; Line number
(use-package emacs
  :hook (((prog-mode text-mode) . display-line-numbers-mode))
  :config
  (setq display-line-numbers-type 'relative))

;;; hl indetn
(use-package indent-guide
  :ensure t
  :hook ((prog-mode . indent-guide-mode)))

;;; Paren
(use-package paren
  :ensure nil
  :hook (afte-init . show-paren-mode)
  :custom
  (show-paren-when-point-inside-paren t)
  (show-paren-when-point-in-periphery t)
  :config
  (setq show-paren-style 'parenthesis
        show-paren-context-when-offscreen 'overlay))

(use-package rainbow-delimiters
  :ensure t
  :hook
  (emacs-lisp-mode . rainbow-delimiters-mode)
  (lisp-mode . rainbow-delimiters-mode))

;;; Window
;; (use-package avy
;;   :ensure t)
(require-package 'avy)

(use-package shackle
  :ensure t
  :hook (after-init . shackle-mode)
  :custom
  (shackle-default-size 0.5)
  (shackle-default-alignment 'below)
  (shackle-rules '((help-mode :select t :align t :size 0.4)
                   ("*quickrun*" :select t :align t :size 0.4)
                   ("*Process List*" :select t :align t))))

;;; Another
(use-package text-mode
  :ensure nil
  :custom
  (word-wrap-by-category t))

;; (require 'zone)
;; (zone-when-idle 600)

;; (use-package highlight-defined
;;   :ensure t
;;   ;; :hook (elisp-lisp-mode . highlight-defined-mode)
;;   )

(use-package so-long
  :ensure nil
  :hook (after-init . global-so-long-mode)
  :config (setq so-long-threshold 400))


(provide 'init-ui)
;;; init-ui.el ends here.
