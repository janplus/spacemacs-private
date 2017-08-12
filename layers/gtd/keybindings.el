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

;; ---------------------------------------------------------------------------
;; Prefixes
;; ---------------------------------------------------------------------------

(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-ci" 'bh/insert-inactive-timestamp)
(global-set-key "\C-co" 'org-clock-goto)
(global-set-key "\C-cI" 'bh/punch-in)
(global-set-key "\C-cO" 'bh/punch-out)
(global-set-key "\C-cS" 'org-save-all-org-buffers)
(global-set-key "\C-c'" 'bh/clock-in-last-task)
(global-set-key "\C-cr" 'boxquote-region)
(global-set-key "\C-cf" 'boxquote-insert-file)

(spacemacs/set-leader-keys
  "aob" 'org-iswitchb
  "aoI" 'bh/punch-in
  "aoO" 'bh/punch-out
  "ao'" 'bh/clock-in-last-task
  "aor" 'boxquote-region
  "aof" 'boxquote-insert-file)

(spacemacs/set-leader-keys-for-major-mode 'org-mode
  "b" 'org-iswitchb
  "I" 'bh/punch-in
  "O" 'bh/punch-out
  "'" 'bh/clock-in-last-task
  "r" 'boxquote-region
  "f" 'boxquote-insert-file)

;; Use "SPC o"
(spacemacs/declare-prefix "o" "org")
(spacemacs/set-leader-keys
  "o'" 'bh/clock-in-last-task
  "oa" 'org-agenda
  "ob" 'org-iswitchb
  "oc" 'org-capture
  "of" 'boxquote-insert-file
  "oI" 'bh/punch-in
  "oi" 'bh/insert-inactive-timestamp
  "ol" 'org-store-link
  "oO" 'bh/punch-out
  "oo" 'org-clock-goto
  "or" 'boxquote-region
  "oS" 'org-save-all-org-buffers)
