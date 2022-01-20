;; 引入路径
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns x))
  :hook
  (after-init . exec-path-from-shell-initialize))

;; 文本区域选择
(use-package expand-region
  :bind
  ("C-=" . er/expand-region))

;; 文本注释
(use-package evil-nerd-commenter
  :config
  (global-set-key (kbd "C-;") 'evilnc-comment-or-uncomment-lines)
  (global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-paragraphs)
  )

;; 光标快速跳转
(use-package avy
  :config
  (define-key input-decode-map (kbd "C-i") (kbd "H-i"))
  (global-set-key (kbd "H-i") 'avy-goto-char-2)
  )

;; 窗口跳转
(use-package ace-window
  :bind
  ("C--" . ace-window)
  :config
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  ;; (setq aw-background t)
  ;; (setq aw-minibuffer-flag 1)
  ;; (setq aw-ignore-current nil)
  )

;; 彩虹括号
(use-package rainbow-delimiters
  :hook
  (prog-mode . rainbow-delimiters-mode)
  :config
  ;; 选中时关闭匹配括号
  (defun paren-mode-open ()
    (show-paren-mode t)
    )
  (defun paren-mode-close ()
    (show-paren-mode -1)
    )  
  (add-hook 'activate-mark-hook #'paren-mode-close)
  (add-hook 'deactivate-mark-hook #'paren-mode-open)
  )

;; ----- modeline  {
;; --------------------------------------------------------

(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :custom
  (doom-modeline-icon nil)
  (doom-modeline-major-mode-icon nil)
  :config
  (setq doom-modeline-bar-width 1)
  (setq doom-modeline-buffer-file-name-style 'file-name)
  (setq doom-modeline-project-detection 'project)
  (setq doom-modeline-buffer-state-icon nil)
  (setq doom-modeline-minor-modes nil)
  (setq doom-modeline-enable-word-count nil)
  (setq doom-modeline-vcs-max-length 24)
  (setq doom-modeline-height 1)
  )

;; --------------------------------------------------------
;; }

(provide 'core-tools)
