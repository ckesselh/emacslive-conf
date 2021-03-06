;; Install missing packages, if any
(install-packs '(magit helm helm-git helm-ls-git))

;; Forcing show-paren-mode
(show-paren-mode t)
(setq show-paren-style 'expression)

;; Misc setting
(global-hl-line-mode 1)
(add-to-list 'default-frame-alist '(cursor-color . "palegoldenrod"))

;; Custom font, trick from https://github.com/overtone/emacs-live/issues/25
(add-to-list 'default-frame-alist '(font . "Inconsolata 14"))

;; Make sure we don't so many bloody "too small for splitting" errors
;; when using Emacs on a Macbook Pro 13" (without Retina display)
(setq window-min-height 2)
