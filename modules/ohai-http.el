;;; -*- lexical-binding: t -*-
;;; ohai-http.el --- HTTP toolkit

(use-package know-your-http-well
  :defer t)

(use-package json-mode)

(use-package restclient
  :mode (("\\.http\\'" . restclient-mode))
  :bind (:map restclient-mode-map
              ("C-c C-f" . json-mode-beautify)))


(provide 'ohai-http)
