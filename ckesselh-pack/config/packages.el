(defvar required-packages
  '(helm helm-git helm-ls-git)
  "A list of packages to ensure are installed at launch.")

(defun required-packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (required-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Personal live pack is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'prelude-packages)
