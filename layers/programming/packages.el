;;; packages.el --- programming Layer packages File for Spacemacs
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

(defconst programming-packages
  '(
    auto-complete
    clj-refactor
    ))

(defun programming/pre-init-auto-complete()
  (setq-default auto-completion-enable-snippets-in-popup t))

(defun programming/post-init-clj-refactor ()
  "Configure the Clojure"
  (setq cljr-clojure-test-declaration "[clojure.test :refer :all]"))

;;; packages.el ends here
