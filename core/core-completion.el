(use-package company
  :hook
  (after-init . global-company-mode)
  )

;; html标签补全
(use-package emmet-mode
  :hook
  (js-mode . emmet-mode)
  (html-mode . emmet-mode)
  (js-jsx-mode . emmet-mode)
  (typescript-mode . emmet-mode)
  :config
  (setq emmet-expand-jsx-className? t)
  )

;; 快速插入片段
(use-package yasnippet
  :config
  (yas-global-mode 1)
  (yas/initialize)
  (yas/load-directory "~/.emacs.d/snippets")
  )

;; ----- lsp补全  {
;; --------------------------------------------------------

(use-package lsp-mode
  :hook
  (c-mode . lsp)
  (c++-mode . lsp)
  (js-jsx-mode . lsp)
  (typescript-mode . lsp)
  (rust-mode . lsp)
  :config
  (add-to-list 'lsp-language-id-configuration '(js-jsx-mode . "javascript"))
  ;; enable log only for debug
  (setq lsp-log-io nil)
  ;; use `evil-matchit' instead
  (setq lsp-enable-folding nil)
  ;; no real time syntax check
  (setq lsp-diagnostic-package :none)
  ;; handle yasnippet by myself
  (setq lsp-enable-snippet nil)
  ;; turn off for better performance
  (setq lsp-enable-symbol-highlighting nil)
  ;; use ffip instead
  (setq lsp-enable-links nil)
  ;; auto restart lsp
  (setq lsp-restart 'auto-restart)
  (setq lsp-enable-imenu nil)
  (setq lsp-idle-delay 0.2)
  (setq lsp-response-timeout 5)
  ;; (setq lsp-rust-server 'rust-analyzer)
  :commands lsp)

;; lsp optionally
(use-package lsp-ui :commands lsp-ui-mode)

;; if you are ivy user
;; (use-package lsp-ivy :commands lsp-ivy-workspace-symbol)

;; 代码检查
;; (use-package flycheck
;;   :init (global-flycheck-mode))

;; --------------------------------------------------------
;; }

(provide 'core-completion)
