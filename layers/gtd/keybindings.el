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

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-ci" 'bh/insert-inactive-timestamp)
(global-set-key "\C-co" 'org-clock-goto)
(global-set-key "\C-cr" 'org-capture)
(global-set-key "\C-cI" 'bh/punch-in)
(global-set-key "\C-cO" 'bh/punch-out)
(global-set-key "\C-cS" 'org-save-all-org-buffers)
(global-set-key (kbd "C-c SPC") 'bh/clock-in-last-task)
