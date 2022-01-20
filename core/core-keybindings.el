;; ----- key-binding tools  {
;; --------------------------------------------------------

;; 快捷键提示
(use-package which-key
  :config
  (which-key-mode)
  (which-key-setup-side-window-bottom)
  )

;; --------------------------------------------------------
;; }

;; ----- prefix keymap  {
;; --------------------------------------------------------

;; (define-prefix-command 'M-y-map)
;; (global-set-key (kbd "M-y") 'M-y-map)

;; --------------------------------------------------------
;; }

;; ----- ctrl  {
;; --------------------------------------------------------

(global-set-key (kbd "C-x t") 'load-theme)

;; 增强C-o
(global-set-key (kbd "C-o") 'new-next-line)
;; 缩进
(global-set-key (kbd "C-\\") 'common-indent)
;; winner mode key
(global-set-key (kbd "C-c r") 'winner-redo)
(global-set-key (kbd "C-c u") 'winner-undo)

;; --------------------------------------------------------
;; }

;; ----- meta  {
;; --------------------------------------------------------

(global-set-key (kbd "M-o") 'new-previous-line)

;; --------------------------------------------------------
;; }




;; ----- func  {
;; --------------------------------------------------------

(defun new-next-line ()
  "任意位置向下新建行"
  (interactive)
  (progn
    (move-end-of-line 1)
    (newline-and-indent)
    )
  )

(defun new-previous-line ()
  "任意位置向上新建行"
  (interactive)
  (progn
    (move-beginning-of-line 1)
    (newline-and-indent)
    (previous-line)
    (indent-for-tab-command)
    )
  )

(defun common-indent ()
  "通用格式化代码"
  (interactive)
  (if (eq (string-match-p "\\.json$" (buffer-file-name)) nil) (indent-region) (json-pretty-print-buffer))
    )

;; --------------------------------------------------------
;; }

(provide 'core-keybindings)
