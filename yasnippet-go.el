;;; yasnippet-go.el --- Yasnippets for Go

;; Copyright (C)  2017 Enze Chi

;; Author: Enze Chi <enze.chi@gmail.com>
;; URL: https://bitbucket.org/ezchi/yasnippet-go.git
;; Package-Requires: ((yasnippet "0.8.0"))
;; Version: 1.0

;;; Commentary:

;; Everything should workout its self.

;;; Code:

(require 'yasnippet)

(defvar yasnippet-go-root
  (file-name-directory (or load-file-name (buffer-file-name))))

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
