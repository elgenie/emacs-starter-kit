;; org mode
(add-hook 'org-mode-hook '(lambda () (visual-line-mode t)))
(setq org-mobile-inbox-for-pull (concat org-directory "/inbox.org"))
(setq org-log-done 'time)
(setq org-todo-keywords
      '((type "TODO(t)" "STARTED(s)" "WAITING(w)" "APPT(a)" "|" "CANCELLED(c)" "DEFERRED(e)" "DONE(d)")
        (sequence "PROJECT(p)" "|" "FINISHED(f)")
        ))
(global-set-key (kbd "C-c c") 'org-capture)
