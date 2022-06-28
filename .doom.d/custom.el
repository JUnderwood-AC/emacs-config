(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(web-mode magit))
 '(safe-local-variable-values
   '((eval progn
           (add-to-list 'exec-path
                        (concat
                         (locate-dominating-file default-directory ".dir-locals.el")
                         "node_modules/.bin/")))
     (org-capture-todo-headline . "Footprint Todo's")
     (gac-automatically-add-new-files-p . t)
     (cider-clojure-cli-global-options . "-A:dev:test")
     (cider-clojure-cli-global-options . "-A:dev:test:cards:fig")
     (python-shell-interpreter . "ipython3")
     (pythonic-pytests-params "-s" "--reuse-db")
     (blacken-line-length . 88)
     (org-capture-todo-headline . "Snagger Todo's")
     (web-mode-set-engine "django")
     (pythonic-docker-compose-service-name . "django")
     (pythonic-docker-compose-filename . "docker-compose.yml")
     (helm-ag-use-grep-ignore-list .
                                   ["*.css" "*.map"])
     (cider-default-cljs-repl . figwheel-main)
     (cider-clojure-cli-global-options . "-A:dev")
     (helm-ag-ignore-buffer-patterns .
                                     ["*.css" "*.map"]))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
