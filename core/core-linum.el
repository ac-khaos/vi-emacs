;; 相对行号
(add-hook 'after-init-hook '(lambda () (linum-mode 1)))

;; (custom-set-faces
;;  '(linum ((t (:inherit (shadow default) :foreground "#a1a1a1")))))

(defvar my-linum-format-string "%3d")

(add-hook 'linum-before-numbering-hook 'my-linum-get-format-string)

(defun my-linum-get-format-string()
  (let* ((width (1+ (length (number-to-string
                             (count-lines (point-min) (point-max))))))
         ;; (format (concat "%" (number-to-string width) "d "))) 
         (format " %2d "))
    (setq my-linum-format-string format)))

(defvar my-linum-current-line-number 0)

(setq linum-format 'my-linum-relative-line-numbers)

(defun my-linum-relative-line-numbers (line-number)
  (let ((offset (abs (- line-number my-linum-current-line-number))))
    (propertize (format my-linum-format-string offset) 'face 'linum)))
;; (propertize (format my-linum-format-string (if (= offset 0) line-number offset)) 'face 'linum))) 

(defadvice linum-update (around my-linum-update)
  (let ((my-linum-current-line-number (line-number-at-pos)))
    ad-do-it))
(ad-activate 'linum-update)

(provide 'core-linum)
