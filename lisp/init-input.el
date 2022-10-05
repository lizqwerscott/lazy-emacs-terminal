;;; init-input.el --- init input package             -*- lexical-binding: t; -*-

;; Copyright (C) 2022  lizqwer scott

;; Author: lizqwer scott(require 'cl-lib) <lizqwerscott@gmail.com>
;; Keywords: input

;;; Commentary:

;;; Code:

(require 'cl-lib)
(require 'posframe)
(defun pyim-probe-meow-normal-mode ()
  "probe meow normal mode"
  (symbol-value 'meow-normal-mode))

(use-package pyim
  :ensure t
  :config
  (setq default-input-method "pyim")
  (setq pyim-cloudim 'baidu)
  (setq pyim-page-tooltip 'posframe)
  (global-set-key (kbd "C-\\") 'toggle-input-method)
  (setq-default pyim-english-input-switch-functions
                `(
                  ;; pyim-probe-program-mode
                  pyim-probe-meow-normal-mode
                  pyim-probe-org-structure-template)))

(use-package pyim-basedict
  :ensure t
  :config
  (pyim-basedict-enable))

(provide 'init-input)
;;; init-input.el ends here.
