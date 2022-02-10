(use-package evil
  :hook
  (after-init . evil-mode)
  :config
  (add-hook 'neotree-mode-hook (lambda ()
                                 (define-key evil-normal-state-local-map (kbd "h") 'neotree-previous-line)
                                 (define-key evil-normal-state-local-map (kbd "l") 'neotree-next-line)
                                 (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
                                 (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-quick-look)
                                 (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
                                 (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
                                 (define-key evil-normal-state-local-map (kbd "r") 'neotree-refresh)
                                 (define-key evil-normal-state-local-map (kbd "A") 'neotree-stretch-toggle)
                                 (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)))

  (evil-global-set-key 'insert (kbd "C-h") 'backward-char)
  (evil-global-set-key 'insert (kbd "C-j") 'next-line)
  (evil-global-set-key 'insert (kbd "C-k") 'previous-line)
  (evil-global-set-key 'insert (kbd "C-l") 'forward-char)

  (evil-global-set-key 'normal (kbd "-") 'ace-window)
  (evil-global-set-key 'normal (kbd "s") 'avy-goto-char-2)
  (evil-global-set-key 'normal (kbd "t") 'neotree-toggle)
  (evil-global-set-key 'normal (kbd "TAB") 'indent-for-tab-command)

  (with-eval-after-load 'ivy
    (define-key ivy-mode-map (kbd "C-j") 'ivy-next-line)
    (define-key ivy-mode-map (kbd "C-k") 'ivy-previous-line)
    (define-key ivy-mode-map (kbd "C-f") 'ivy-scroll-up-command)
    (define-key ivy-mode-map (kbd "C-b") 'ivy-scroll-down-command)
    )

  (with-eval-after-load 'company
    (define-key company-active-map (kbd "C-j") 'company-select-next)
    (define-key company-active-map (kbd "C-k") 'company-select-previous)
    (define-key company-active-map (kbd "C-h") 'company-previous-page)
    (define-key company-active-map (kbd "C-l") 'company-next-page)
    )
  )

(use-package evil-leader 
  :config
  (global-evil-leader-mode)
  (evil-leader/set-leader ",")
  (evil-leader/set-key
   "e" 'counsel-find-file
   "f" 'counsel-git-grep
   "b" 'ivy-switch-buffer
   "k" 'kill-buffer
   "y" 'counsel-yank-pop
   "h" 'counsel-recentf
   "g" 'magit-status
   "p" 'projectile-command-map
   )
  )

(global-set-key (kbd "M-s") 'save-buffer)

(use-package evil-collection
  :config
  (evil-collection-init))

(provide 'core-evil)
