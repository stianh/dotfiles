(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-message t) ; no splash screen
(setq visible-bell nil); do not use visual bell, looks ugly on os x
(setq ring-bell-function 'ignore) ; overide bell sound 
(global-display-line-numbers-mode 1) ; always show line numbers
;;(load-theme 'modus-vivendi t)
(load-theme 'tango-dark)
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
(use-package magit
  :commands(magit-status magit-get-current-branch)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
