;;; yasnippet-go.el --- Yasnippets for Go

;; Copyright (C)  2019 Enze Chi

;; Author: Enze Chi <enze.chi@gmail.com>
;; Version 1.0.1
;; Keywords: snippets, go
;; URL: https://github.com/ezchi/yasnippet-go.git

;;; Commentary:

;; This package provides code snippets for Go language.

;;; Code:

(require 'yasnippet)

(defconst yasnippet-go-root
  (file-name-directory (or load-file-name buffer-file-name)))

;;;###autoload
(defun yasnippet-go-initialize ()
  (let ((snip-dir (expand-file-name "snippets" yasnippet-go-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snip-dir t))
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(yasnippet-go-initialize))

(provide 'yasnippet-go)

;;; yasnippet-go.el ends here
