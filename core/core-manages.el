(use-package ivy
  :diminish ivy-mode
  :hook
  (after-init . ivy-mode))

(use-package counsel-projectile
  :config
  (counsel-projectile-mode))

(use-package ivy-posframe
  :config
  (setq ivy-posframe-display-functions-alist
        '((t               . ivy-posframe-display-at-frame-top-center)
          (swiper          . ivy-display-function-fallback)))
  (ivy-posframe-mode 1)
  )

(use-package ivy-yasnippet)

;; github管理
(use-package magit :defer 1)

;; 项目管理
(use-package projectile
  :hook
  (after-init . projectile-global-mode))

(use-package diredfl
  :config (diredfl-global-mode t))

(use-package neotree
  :config
  (setq neo-theme (if (display-graphic-p) 'nerd))
  (setq projectile-switch-project-action 'neotree-projectile-action)
  )

(provide 'core-manages)
