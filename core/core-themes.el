;; 中英文字体设置
;; Inconsolata |  Yuppy TC | Wawati SC | Ayuthaya
(set-face-attribute 'default nil :font "Inconsolata 14")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "WenQuanYi Micro Hei" :size 12)))
(tool-bar-mode -1)
(menu-bar-mode -1)
(set-scroll-bar-mode nil)   
(setq-default cursor-type 'bar)
(setq-default line-spacing 0.2)

(use-package all-the-icons)

;; ----- themes  {
;; --------------------------------------------------------

(use-package material-theme
  :config
  ;; (load-theme 'material t)
  ;; (load-theme 'material-light t)
  )
(use-package kaolin-themes
  :config
  ;; (load-theme 'kaolin-dark t)
  ;; (load-theme 'kaolin-breeze t)
  ;; (load-theme 'kaolin-mono-light t)
  ;; (load-theme 'kaolin-valley-light t)
  )
(use-package color-theme-sanityinc-tomorrow
  :config
  ;; (load-theme 'sanityinc-tomorrow-day t)
  )
(use-package github-theme
  :config
  ;; (load-theme 'github t)
  )

;; (set-face-background 'fringe "#FAFAFA")
;; (custom-set-faces
;;  '(mode-line ((t (:family "Inconsolata" :height 130))))
;;  '(mode-line-inactive ((t (:family "Inconsolata" :height 130)))))

;; (set-face-attribute 'mode-line nil
;;                     :background "#D7D6D7"
;;                     :foreground "#4D4D4C"
;;                     :box '(:line-width 1 :color "#D7D6D7")
;;                     :overline nil
;;                     :underline nil)
;; (set-face-attribute 'mode-line-inactive nil
;;                     ;; :background "#565063"
;;                     ;; :foreground "white"
;;                     :box '(:line-width 1 :color "#FFFEFF")
;;                     :overline nil
;;                     :underline nil)
;; (set-face-attribute 'mode-line-buffer-id nil
;;                     :foreground "#825CA4"
;;                     )

;; (set-background-color "#E4F0EE")
;; (set-face-background 'fringe "#E4F0EE")
;; (set-face-background 'hl-line "#ECEEF1")
;; (set-face-foreground 'mode-line "#FFFFFF")
;; (set-face-background 'mode-line "#A89DBD")

(use-package doom-themes
  :config
  (load-theme 'doom-dracula t)
  ;; (load-theme 'doom-horizon t)
  ;; (load-theme 'doom-tomorrow-day t)
  ;; (load-theme 'doom-nord-light t)
  )

;; --------------------------------------------------------
;; }

(provide 'core-themes)
