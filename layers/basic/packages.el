;;; packages.el --- basic Layer packages File for Spacemacs
;;
;; Copyright (c) 2017 Wu Jian
;;
;; Author: Wu Jian <jan.chou.wu@gmail.com>
;; URL: https://github.com/janplus/spacemacs-private
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defconst basic-packages
  '(
    auto-complete
    flyspell-correct
    chinese-fonts-setup
    ))

(defun basic/pre-init-flyspell-correct()
  (setq-default ispell-program-name "aspell")
  (ispell-change-dictionary "american" t))

(defun basic/init-chinese-fonts-setup()
  (use-package chinese-fonts-setup
    :defer t
    :init (cnfonts-enable)))

(defun basic/pre-init-auto-complete()
  (setq-default auto-completion-enable-snippets-in-popup t))

;;; packages.el ends here
