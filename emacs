;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode
(global-font-lock-mode t)

;; enable visual feedback on selections
(setq transient-mark-mode t)

;; M-right/left arrow goes towards braces for programming
(global-set-key [(meta left)] 'backward-sexp)
(global-set-key [(meta right)] 'forward-sexp)

;; M-g goes to a line number
(global-set-key [(meta g)] 'goto-line)

;; load theme
(add-to-list 'load-path "~/bin/emacs/")
(require 'color-theme)
(color-theme-deep-blue)

;; nice middle-click copy and pasting
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; default size for window is 84x50
(setq default-frame-alist '(
(width . 84) (height . 50)
))
