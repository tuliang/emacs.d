(require 'rvm)
(rvm-use-default)

;; cocoa emacs terminfo & coding system fix
(prefer-coding-system 'utf-8-unix)

(defadvice ansi-term (after set-coding-system activate)
  (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))

(add-hook 'ruby-mode-hook 'rubocop-mode)

(require 'prelude-web)
(defadvice prelude-web-mode-defaults (after set-markup-indent-offset activate)
  ;; I prefer 2 space indent
  (setq web-mode-markup-indent-offset 2))

;; show line number
(global-linum-mode +1)
