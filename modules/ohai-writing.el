(use-package darkroom
  :commands darkroom-mode
  :config
  (setq darkroom-text-scale-increase 0))

(defun ohai/enter-focus-mode ()
  (interactive)
  (darkroom-mode 1)
  (display-line-numbers-mode 0))

(defun ohai/leave-focus-mode ()
  (interactive)
  (darkroom-mode 0)
  (display-line-numbers-mode 1))

(defun ohai/toggle-focus-mode ()
  (interactive)
  (if (symbol-value darkroom-mode)
    (ohai/leave-focus-mode)
    (ohai/enter-focus-mode)))


(provide 'ohai-writing)
