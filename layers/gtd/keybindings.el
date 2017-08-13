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
(global-set-key "\C-cf" 'boxquote-insert-file)
(global-set-key "\C-ci" 'bh/insert-inactive-timestamp)
(global-set-key "\C-co" 'org-clock-goto)
(global-set-key "\C-cr" 'boxquote-region)

(global-set-key "\C-cI" 'bh/punch-in)
(global-set-key "\C-cO" 'bh/punch-out)
(global-set-key "\C-cS" 'org-save-all-org-buffers)

(global-set-key "\C-c'" 'bh/clock-in-last-task)

;; Spacemacs leader keys
(spacemacs/set-leader-keys
  "aob" 'org-iswitchb
  "aof" 'boxquote-insert-file
  "aor" 'boxquote-region

  "aoI" 'bh/punch-in
  "aoO" 'bh/punch-out

  "ao'" 'bh/clock-in-last-task)

(spacemacs/set-leader-keys-for-major-mode 'org-mode
  "b" 'org-iswitchb
  "f" 'boxquote-insert-file
  "r" 'boxquote-region

  "I" 'bh/punch-in
  "O" 'bh/punch-out

  "'" 'bh/clock-in-last-task)

;; Use "SPC o"
(spacemacs/declare-prefix "o" "org")
(spacemacs/set-leader-keys
  "oa" 'org-agenda
  "ob" 'org-iswitchb
  "oc" 'org-capture
  "of" 'boxquote-insert-file
  "oi" 'bh/insert-inactive-timestamp
  "ol" 'org-store-link
  "oo" 'org-clock-goto
  "or" 'boxquote-region

  "oI" 'bh/punch-in
  "oO" 'bh/punch-out
  "oS" 'org-save-all-org-buffers

  "o'" 'bh/clock-in-last-task)

;; Org agenda mode map
(defun gtd-org-agenda-mode-keys()
  (interactive)
  (org-defkey org-agenda-mode-map "w" 'org-agenda-refile)

  (org-defkey org-agenda-mode-map "F" 'bh/restrict-to-file-or-follow)
  (org-defkey org-agenda-mode-map "N" 'bh/narrow-to-subtree)
  (org-defkey org-agenda-mode-map "P" 'bh/narrow-to-project)
  (org-defkey org-agenda-mode-map "U" 'bh/narrow-up-one-level)
  (org-defkey org-agenda-mode-map "V" 'bh/view-next-project)
  (org-defkey org-agenda-mode-map "W" (lambda () (interactive) (setq bh/hide-scheduled-and-waiting-next-tasks t) (bh/widen)))
  (org-defkey org-agenda-mode-map "\C-c\C-x<" 'bh/set-agenda-restriction-lock))

(add-hook 'org-agenda-mode-hook 'gtd-org-agenda-mode-keys)

;; Speed commands
(setq org-speed-commands-user (quote (("0" . ignore)
                                      ("1" . ignore)
                                      ("2" . ignore)
                                      ("3" . ignore)
                                      ("4" . ignore)
                                      ("5" . ignore)
                                      ("6" . ignore)
                                      ("7" . ignore)
                                      ("8" . ignore)
                                      ("9" . ignore)

                                      ("a" . ignore)
                                      ("d" . ignore)
                                      ("h" . bh/hide-other)
                                      ("i" progn
                                       (forward-char 1)
                                       (call-interactively 'org-insert-heading-respect-content))
                                      ("k" . org-kill-note-or-show-branches)
                                      ("l" . ignore)
                                      ("m" . ignore)
                                      ("q" . bh/show-org-agenda)
                                      ("r" . ignore)
                                      ("s" . org-save-all-org-buffers)
                                      ("w" . org-refile)
                                      ("x" . ignore)
                                      ("y" . ignore)
                                      ("z" . org-add-note)

                                      ("A" . ignore)
                                      ("B" . ignore)
                                      ("E" . ignore)
                                      ("F" . bh/restrict-to-file-or-follow)
                                      ("G" . ignore)
                                      ("H" . ignore)
                                      ("J" . org-clock-goto)
                                      ("K" . ignore)
                                      ("L" . ignore)
                                      ("M" . ignore)
                                      ("N" . bh/narrow-to-org-subtree)
                                      ("P" . bh/narrow-to-org-project)
                                      ("Q" . ignore)
                                      ("R" . ignore)
                                      ("S" . ignore)
                                      ("T" . bh/org-todo)
                                      ("U" . bh/narrow-up-one-org-level)
                                      ("V" . ignore)
                                      ("W" . bh/widen)
                                      ("X" . ignore)
                                      ("Y" . ignore)
                                      ("Z" . ignore))))
