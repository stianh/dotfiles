(setq option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
;;(setq inhibit-startup-message t) ; no splash screen
(setq visible-bell nil); do not use visual bell, looks ugly on os x
(setq ring-bell-function 'ignore) ; overide bell sound 
(global-display-line-numbers-mode 1) ; always show line numbers
;;(load-theme 'modus-vivendi t)
;;(load-theme 'tango-dark)
(global-auto-revert-mode 1) ;; automaticly update files that has changed on disk.
(set-fringe-mode 10) ; Some breathing room 
(set-face-attribute 'default nil :font "Fira Code Retina" :height 180)
	      
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
(setq org-startup-indented t)
(use-package org-tree-slide
  :custom
  (org-image-actual-width nil))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lsp-java which-key lsp-treemacs treemacs company-lsp flycheck lsp-ui lsp-mode company projectile org-bullets all-the-icons doom-modeline org-tree-slide magit use-package)))
(setq org-log-done t)

(use-package doom-themes
  :init (load-theme 'doom-gruvbox t))
;; Note: M-x all-the-icons-install fonts first time
(use-package all-the-icons)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package  org-bullets
  :hook (org-mode . org-bullets-mode))
(use-package projectile
  :init
  (setq lsp-keymap-prefix "C-c l"))
(use-package company
  :ensure t)

(use-package lsp-mode)
(use-package lsp-ui :commands lsp-ui-mode)
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
;;(use-package evil
;;  :ensure t ;; install the evil package if not installed
;;  :init ;; tweak evil's configuration before loading it
;;  (setq evil-search-module 'evil-search)
;;  (setq evil-ex-complete-emacs-commands nil)
;;  (setq evil-vsplit-window-right t)
;;  (setq evil-split-window-below t)
;;  (setq evil-shift-round nil)
;;  (setq evil-want-C-u-scroll t)
;;  :config ;; tweak evil after loading it
;;  (evil-mode))
(use-package go-mode
  :ensure t
  :bind()
  :hook((go-mode . lsp-deferred)
	(before-save . lsp-format-buffer)
	(before-save . lsp-organize-imports)
	))
(use-package treemacs
  :hook(ensure t))
(use-package lsp-treemacs)

(use-package which-key
  :config (which-key-mode))

(use-package lsp-java
  :config (add-hook 'java-mode-hook 'lsp))
