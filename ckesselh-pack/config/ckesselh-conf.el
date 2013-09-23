; Forcing show-paren-mode
(show-paren-mode t)
(setq show-paren-style 'expression)

;; Misc setting
(global-hl-line-mode 1)
(add-to-list 'default-frame-alist '(cursor-color . "palegoldenrod"))

;; Custom font, trick from https://github.com/overtone/emacs-live/issues/25
(add-to-list 'default-frame-alist '(font . "Inconsolata 14"))
