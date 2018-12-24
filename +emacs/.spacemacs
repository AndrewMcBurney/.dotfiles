;;; .spacemacs --- Configuration file for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Andrew Robert McBurney <andrewrobertmcburney@gmail.com>
;; Maintainer: Andrew Robert McBurney <andrewrobertmcburney@gmail.com>

;; URL: https://github.com/AndrewMcBurney/.dotfiles
;; Compatibility: only tested with Spacemacs (Emacs 25.0)
;; Version: 0.0.1
;; Last-Updated: 2010-02-01

;;; License: GPLv3

;;; Commentary:

;; My personal Spacemacs configuration file.

;;; Code:

(defun dotspacemacs/layers ()
  "Spacemacs configuration layers."
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     ;;; Language layers.
     (c-c++
      :variables
      c-c++-default-mode-for-headers 'c++-mode
      c-c++-enable-clang-support t)
     (csv)
     (emacs-lisp)
     (go
      :variables
      go-tab-width 2)
     (html
      :variables
      set-fill-column 100)
     (java
      :variables
      set-fill-column 100)
     (javascript
      :variables
      set-fill-column 100)
     (lua)
     (markdown
      :variables
      markdown-live-preview-engine 'vmd)
     (python
      :variables
      python-enable-yapf-format-on-save t)
     (ruby
      :variables
      ruby-version-manager 'rbenv
      ruby-enable-ruby-on-rails-support t
      ruby-test-runner 'rspec)
     (ruby-on-rails)
     (scala
      :variables
      scala-indent:use-javadoc-style t
      scala-use-java-doc-style t
      scala-auto-insert-asterisk-in-comments t
      scala-auto-start-ensime t
      set-fill-column 120)
     (shell
      :variables
      shell-default-height 30
      shell-default-position 'bottom
      shell-default-shell 'multi-term)
     (sql)
     (swift)
     (typescript
      :variables
      typescript-fmt-on-save t
      set-fill-column 100)
     (yaml)

     ;;; General layers.
     (auto-completion
      :variables
      auto-completion-enable-snippets-in-popup t
      auto-completion-enable-help-tooltip t
      auto-completion-enable-sort-by-usage t
      auto-completion-return-key-behavior 'complete
      auto-completion-tab-key-behavior 'cycle
      auto-completion-complete-with-key-sequence nil
      auto-completion-complete-with-key-sequence-delay 0.01
      auto-completion-private-snippets-directory t)
     (chrome)
     (dash)
     (docker)
     (emoji)
     (finance)
     (git
      :variables
      git-magit-status-fullscreen t)
     (github)
     (helm)
     (ibuffer
      :variables
      ibuffer-group-buffers-by 'projects)
     (mu4e :variables
           mu4e-installation-path "/usr/share/emacs/site-lisp")
     (org
      :variables
      org-enable-github-support t
      org-enable-bootstrap-support t
      org-enable-org-journal-support t
      org-journal-dir "~/me/journal/")
     (osx)
     (search-engine)
     (slack)
     (spotify)
     (spell-checking)
     (syntax-checking)
     (treemacs)
     (version-control)
     )

   dotspacemacs-additional-packages
   '(ag
     flycheck-package
     (atom-one-dark-theme
      :location
      (recipe :fetcher github :repo "jonathanchu/atom-one-dark-theme"))
     (zerodark-theme
      :location
      (recipe :fetcher github :repo "NicolasPetton/zerodark-theme"))
     (flycheck-ledger
      :location
      (recipe :fetcher github :repo "purcell/flycheck-ledger"))
     skeletor
     )
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))


(defun dotspacemacs/init ()
  "Initialization for spacemacs defaults."
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update t
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '((todos . 5) (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'emacs-lisp-mode
   dotspacemacs-themes '(zerodark atom-one-dark)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("SourceCodePro+Powerline+Awesome Regular"
                               :size 10
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup t
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers '(:relative t)
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup 'all))


(defun dotspacemacs/user-init ()
  "Initialization function for user code."
  ;; Move custom-set-variables to a separate file.
  (setq custom-file
        (file-truename
         (concat "~/.dotfiles/+emacs/" "custom.el")))
  (load custom-file)

  (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
  (setq exec-path (append exec-path '("/usr/local/bin"))))


(defun dotspacemacs/user-config ()
  "User configuration code."
  ;; Don't use normal startup buffer.
  (kill-buffer "*spacemacs*")

  ;; Load all code from the `/private` directory.
  (let ((default-directory "~/.emacs.d/private/"))
    (normal-top-level-add-subdirs-to-load-path))

  ;; Fix: https://github.com/syl20bnr/spacemacs/issues/10316.
  (setq yas-snippet-dirs
        '("~/.emacs.d/private/snippets/"))

  (require 'andrew-company)
  (require 'andrew-global)
  (require 'andrew-helm)
  (require 'andrew-org)
  (require 'andrew-skeletor)
  (require 'andrew-style)
  (require 'andrew-terminal)
  (require 'andrew-transparent)
  (require 'andrew-c++-style)
  (require 'andrew-javascript)
  (require 'andrew-ruby)
  (require 'andrew-ensime)
  (require 'andrew-shell)

  ;; Run emacs as a server.
  (server-start))

;;; .spacemacs ends here.