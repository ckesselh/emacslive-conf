;; Place your bindings here.

;; Show undo tree
(define-key global-map (kbd "C-s-/") 'undo-tree-visualize)

;; Increase/Decrease font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Find file in local GIT repository
(define-key global-map (kbd "C-x C-g") 'helm-ls-git-ls)
(define-key global-map (kbd "C-x C-r") 'recentf-open-files)

;; The standard keybindings for resizing windows are just plain crazy
(define-key global-map (kbd "S-C-<left>") 'shrink-window-horizontally)
(define-key global-map (kbd "S-C-<right>") 'enlarge-window-horizontally)
(define-key global-map (kbd "S-C-<up>") 'shrink-window)
(define-key global-map (kbd "S-C-<down>") 'enlarge-window)

;; Same for sexpr navigation
(define-key lisp-mode-shared-map (kbd "C-s-<left>") 'paredit-backward)
(define-key lisp-mode-shared-map (kbd "C-s-<right>") 'paredit-forward)
(define-key lisp-mode-shared-map (kbd "C-s-<up>") 'paredit-backward-up)
(define-key lisp-mode-shared-map (kbd "C-s-<down>") 'paredit-forward-up)

;; Easily jump to and run tests
(define-key clojure-mode-map (kbd "<f2> <f2>") 'clojure-jump-between-tests-and-code)
(define-key clojure-mode-map (kbd "<f3> <f3>") 'clojure-test-run-tests)
(define-key clojure-mode-map (kbd "<f4> <f4>") 'clojure-test-clear)

;; Easily start and work with Clojure REPL
(define-key clojure-mode-map (kbd "<f5> <f5>") 'nrepl-jack-in)
(define-key clojure-mode-map (kbd "<f6> <f6>") 'nrepl-load-current-buffer)

;; Some custom key combo to support copying whole sexpr at once
(defun copy-sexp-at-point ()
  (interactive)
  (kill-new (thing-at-point 'sexp)))
(define-key lisp-mode-shared-map [C-s-268632075] 'copy-sexp-at-point)

;; Unbind some of the more confusing defaults that I typically never use
(global-unset-key (kbd "C-z"))
