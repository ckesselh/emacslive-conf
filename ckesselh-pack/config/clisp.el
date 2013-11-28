;; SLIME itself should have been installed via Quicklisp
;; (the version we can get from MELPA just doesn't work properly)
(load (expand-file-name "~/quicklisp/slime-helper.el"))

;; What (Common)Lisp implementation to use?
(setq inferior-lisp-program "sbcl")
