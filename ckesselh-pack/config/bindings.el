;; Place your bindings here.

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

;; Some custom key combo to support copying whole sexpr at once
(defun copy-sexp-at-point ()
  (interactive)
  (kill-new (thing-at-point 'sexp)))
(define-key lisp-mode-shared-map [C-s-268632075] 'copy-sexp-at-point)
