;;; layers.el --- Local layers File
;;
;; Copyright (c) 2017 Wu Jian
;;
;; Author: Wu Jian <jan.chou.wu@gmail.com>
;; URL: https://github.com/janplus/spacemacs-private
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(configuration-layer/declare-layers '(
                                      clojure
                                      auto-completion
                                      git
                                      markdown
                                      org
                                      (shell :variables
                                             shell-default-height 30
                                             shell-default-position 'bottom)
                                      spell-checking
                                      ))