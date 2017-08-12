;;; keybindings.el --- Spacemacs Base Layer key-bindings File
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
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
(global-set-key (kbd "C-c SPC") 'bh/clock-in-last-task)
(global-set-key "\C-cr" 'boxquote-region)
(global-set-key "\C-cf" 'boxquote-insert-file)

(spacemacs/set-leader-keys
  "aob" 'org-iswitchb
  "aoI" 'bh/punch-in
  "aoO" 'bh/punch-out
  "aor" 'boxquote-region
  "aof" 'boxquote-insert-file)

(spacemacs/set-leader-keys-for-major-mode 'org-mode
  "b" 'org-iswitchb
  "I" 'bh/punch-in
  "O" 'bh/punch-out
  "SPC" 'bh/clock-in-last-task
  "r" 'boxquote-region
  "f" 'boxquote-insert-file)
