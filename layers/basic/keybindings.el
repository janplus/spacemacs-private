;;; keybindings.el --- Spacemacs Base Layer key-bindings File
;;
;; Copyright (c) 2017 Wu Jian
;;
;; Author: Wu Jian <jan.chou.wu@gmail.com>
;; URL: https://github.com/janplus/spacemacs-private
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)
(global-set-key "\M-%" 'query-replace-regexp)

;; Helm
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(global-set-key (kbd "C-h C-l") 'helm-locate-library)

(global-set-key "\C-xb" 'helm-mini)
(global-set-key (kbd "C-x C-b") 'spacemacs-layouts/non-restricted-buffer-list-helm)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; Ctrl-x
(global-set-key (kbd "C-x C-;") 'spacemacs/comment-or-uncomment-lines)

;; Ctrl-c
(global-set-key "\C-cg" 'magit-status)

;; Meta
(global-set-key (kbd "M-;") 'spacemacs/comment-or-uncomment-lines)

;; Evil keys
(define-key evil-normal-state-map "gb" 'pop-tag-mark)
