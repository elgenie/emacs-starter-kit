;; The emacs-starter-kit defaults are generally pretty good
;; (for the languages it knows about). Here are some deviations:

;; typing overwrites selected text (pending delete)
(delete-selection-mode t)

;; Interactive Do (http://www.emacswiki.org/cgi-bin/wiki/InteractivelyDoThings)
(setq ido-max-prospects 30 ;; show 30 prospective matches
      ido-ignore-extensions t)

;; Search Behavior
(setq case-fold-search t        ;; case insensitive search ...
      search-highlight t        ;; ... with highlighted results
      isearch-highlight t       ;; ... including incremental
      query-replace-highlight t ;; ... and replace
      )

;; --------------------------------------------------------------------------------
;; Color Selection
(color-theme-zenburn)
;; show trailing whitespace ...
(set-face-background 'trailing-whitespace "#900000")
(setq-default show-trailing-whitespace t)
;; ... and terminate with extreme prejudice
;; (if (fboundp 'delete-trailing-whitespace)
;;     (add-hook 'write-file-hooks 'delete-trailing-whitespace)
;; )

;; handle newlines at the end of files
(setq require-final-newline 'visit-save
      next-line-add-newlines nil)

(let ((default-directory user-specific-dir))
  (normal-top-level-add-subdirs-to-load-path))

(require 'yas-jit)
(setq yas/root-directory (concat user-specific-dir "/snippets"))
(yas/jit-load)
