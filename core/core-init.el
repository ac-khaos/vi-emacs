;;((native-compile-async "~/.emacs.d/elpa" 4 t))
(setq inhibit-splash-screen t)

(fset 'yes-or-no-p'y-or-n-p)

;; 显示行号
;; (global-display-line-numbers-mode t)
;; 非选中窗口禁用光标
(setq-default cursor-in-non-selected-windows nil)
;; 行高亮
(global-hl-line-mode 1)
;; 关闭自动保存
(setq auto-save-default nil)
;; 自动更新buffer变更文件
(global-auto-revert-mode t)
;; 自动变更周期
;; （setq auto-revert-interval 3)
;; 编辑文件备份路径变更
(setq backup-directory-alist (quote (("." . "~/._backups_emacs"))))
;; 自动更新git状态
(setq auto-revert-check-vc-info t)
;; 括号高亮
(show-paren-mode 1)
;; tab缩进改为space
(setq-default indent-tabs-mode nil)
;; 记录最近打开文件
(recentf-mode t)
(setq recentf-max-menu-items 20)
(setq recentf-max-saved-items 20)
;; 共享剪切板
;; (setq x-select-enable-clipboard t)

;; 代码折叠
;; (add-hook 'prog-mode-hook #'hs-minor-mode)

;; 垃圾回收阀值
(setq gc-cons-threshold (* 50 1000 1000))

;; 修改meta
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

;; 符号配对
(setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)
(electric-pair-mode 1)

;; 启动winner mode
(winner-mode t)

(provide 'core-init)
