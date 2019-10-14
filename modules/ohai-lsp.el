;;; -*- lexical-binding: t -*-
;;; ohai-lsp.el --- Language Server Protocol support.

;; Copyright (C) 2018 Bodil Stokke

;; Author: Bodil Stokke <bodil@bodil.org>

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

;;; Code:

;; Basic lsp-mode config.
;; Language modules will add their own lsp setup if this is loaded.
(use-package lsp-mode
  :commands lsp)

(with-eval-after-load "company"
  (use-package company-lsp
    :after lsp-mode
    :commands company-lsp))

(use-package lsp-ui
  :commands lsp-ui-mode
  :bind (:map lsp-ui-mode-map
              ("M-." . lsp-ui-peek-find-definitions)
              ("M-?" . lsp-ui-peek-find-references)))

;; TODO add dap-mode?


(provide 'ohai-lsp)
;;; ohai-lsp.el ends here
