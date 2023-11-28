;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(menu-bar-mode -1)          ; Removing the menu bar :)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(rainbow-delimiters evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Install Projectile
(unless (package-installed-p 'projectile)
  (package-refresh-contents)
  (package-install 'projectile))

(require 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; If you want to use Projectile everywhere
(setq projectile-global-mode t)

;; (Optional) Enable caching for faster performance
(setq projectile-enable-caching t)

;; (Optional) Change the indexing method to a faster one (requires `ripgrep` to be installed)
(setq projectile-indexing-method 'alien)

;; (Optional) Set a custom key binding for switching between projects
(global-set-key (kbd "C-x p") 'projectile-switch-project)

;; Install ripgrep
;; You can download it from https://github.com/BurntSushi/ripgrep/releases
(setq projectile-generic-command "rg --files --hidden")

;; (Optional) Enable caching for faster performance
(setq projectile-enable-caching t)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Setting up ivy
(unless (package-installed-p 'ivy)
  (package-refresh-contents)
  (package-install 'ivy))

(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)	
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :ensure t
  :config
  (ivy-mode 1))

;; Setting up Doom mode-line
(use-package doom-modeline
  :ensure t 
  :init (doom-modeline-mode 1))


;; Setting up line numbers
(global-display-line-numbers-mode t)

;; Set the width of line numbers
(setq-default display-line-numbers-width 4)

;; Setting up rainbow delimiters
(unless (package-installed-p 'rainbow-delimiters)
  (package-refresh-contents)
  (package-install 'rainbow-delimiters))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; Setting up which-key
(unless (package-installed-p 'which-key)
  (package-refresh-contents)
  (package-install 'which-key))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
    (setq which-key-idle-delay 0.3))

;; Setting up doom-themes
(unless (package-installed-p 'doom-themes)
  (package-refresh-contents)
  (package-install 'doom-themes))

(use-package doom-themes)

(load-theme 'doom-one t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; Setting up CUA Mode 

(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; Highlight region when active
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour
