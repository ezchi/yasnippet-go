;;; yasnippet-go.el --- Yasnippets for Go

;; Copyright (C)  2017 Enze Chi

;; Author: Enze Chi <enze.chi@gmail.com>
;; Keywords: snippets
;; Version 1.0.0
;; Package-Requires: ((yasnippet "0.8.0"))
;; URL: https://bitbucket.org/ezchi/yasnippet-go.git

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
