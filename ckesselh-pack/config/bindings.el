;; Place your bindings here.

;; Increase/Decrease font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Find file in local GIT repository
(define-key global-map (kbd "C-x C-g") 'helm-ls-git-ls)
(define-key global-map (kbd "C-x C-r") 'recentf-open-files)
