(when (version< emacs-version "27.0") (package-initialize))

(defun frame-maximized()
  (unless (frame-parameter nil 'fullscreen)
    (toggle-frame-maximized)
    )
  (add-to-list 'default-frame-alist '(fullscreen . maximized)))

;; 启动全屏
(frame-maximized)

;; 设置custom文件
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; 加载自定义配置
(add-to-list 'load-path "~/.emacs.d/core")
;; 基础配置
(require 'core-init)
;; 包&源管理
(require 'core-package)
;; evil mode
(require 'core-evil)
;; 颜色主题
(require 'core-themes)
;; 自定义快捷键
;; (require 'core-keybindings)
;; 基础工具
(require 'core-tools)
;; 管理工具
(require 'core-manages)
;; 补全工具
(require 'core-completion)
;; major modes
(require 'core-major-modes)
;; 插件工具
;; (require 'core-implements)
