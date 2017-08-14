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
    dired
    flyspell-correct
    chinese-fonts-setup
    ))

(defun basic/pre-init-flyspell-correct()
  (setq-default ispell-program-name "aspell")
  (ispell-change-dictionary "american" t))

(defun basic/pre-init-dired ()
  "Set the dired mode"
  (interactive)
  (when (spacemacs/system-is-mac)
    (setq insert-directory-program "gls" dired-use-ls-dired t)))

(defun basic/init-chinese-fonts-setup()
  (use-package chinese-fonts-setup
    :defer t
    :init (cnfonts-enable)))

;;; packages.el ends here
