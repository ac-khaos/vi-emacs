;; ----- web  {
;; --------------------------------------------------------

(add-to-list 'auto-mode-alist '("\\.wxml\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.wxss\\'" . css-mode))

(setq js-indent-level 2)
(setq css-indent-offset 2)
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js-jsx-mode))

(use-package typescript-mode
  :config
  (setq typescript-indent-level 2)
  (add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescript-mode))
  )

(use-package vue-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
  )

(use-package prettier-js
  :hook
  (typescript-mode . prettier-js-mode)
  :config
  (setq prettier-js-args '("--print-width" "100"))
  )

;; --------------------------------------------------------
;; }

;; ----- go  {
;; --------------------------------------------------------

(use-package go-mode
  :defer 1
  :hook
  (before-save . gofmt-before-save)
  (go-mode . (lambda () (setq tab-width 2)))
  :config
  (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
  (when (executable-find "goimports")
    (setq gofmt-command "goimports"))
  )

;; --------------------------------------------------------
;; }

;; ----- lua  {
;; --------------------------------------------------------

(use-package lua-mode
  :config
  (setq lua-indent-level 2)
  (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
  (add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
  ) 

;; --------------------------------------------------------
;; }


;; (org-babel-do-load-languages
;;   'org-babel-load-languages
;;   '(;; other Babel languages
;;     (ditaa . t)
;;     (plantuml . t)
;;     (latex . t)
;;     (org . t)
;;     (dot . t)
;;     (sql . t)
;;     (python . t)
;;     ))

;; (setq org-confirm-babel-evaluate nil)

;; (add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)

                                        ; Make babel results blocks lowercase
;; (setq org-babel-results-keyword "results")

;; (setq org-plantuml-jar-path
;;       (expand-file-name "~/.emacs.d/scripts/plantuml.jar"))
;; (setq org-ditaa-jar-path 
;;       (expand-file-name "~/.emacs.d/scripts/ditaa.jar"))

;; 打开 org-indent mode
;; (setq org-startup-indented t)

;; (use-package valign
;;   :load-path "~/.emacs.d/plugins/valign"
;;   :hook
;;   (org-mode . valign-mode)
;;   )

;; --------------------------------------------------------
;; }

;; ----- yaml  {
;; --------------------------------------------------------

(use-package yaml-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-mode))
  )

;; --------------------------------------------------------
;; }

(use-package glsl-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
  )

(use-package nginx-mode
  :config
  (add-to-list 'auto-mode-alist '("/nginx/sites-\\(?:available\\|enabled\\)/" . nginx-mode))
  (setq nginx-indent-level 2)
  )

;; ----- rust  {
;; --------------------------------------------------------

(use-package rust-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
  (setq rust-indent-offset 2)
  )

;; --------------------------------------------------------
;; }

(provide 'core-major-modes)
