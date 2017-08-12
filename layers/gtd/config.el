;;; config.el --- Org configuration File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;;; Variables
;; Org agenda files settings
(defvar own-org-directory "~/Dropbox/org")
(defvar own-org-default-note-file "/refile.org")
(defvar own-org-agenda-diary-file "/diary.org")
;; Project list
(defvar bh/project-list nil)
;; The default organization task id
(defvar bh/organization-task-id "eb155a82-92b2-4f25-a3c6-0304591af2f9")

(defvar bh/hide-scheduled-and-waiting-next-tasks t)
