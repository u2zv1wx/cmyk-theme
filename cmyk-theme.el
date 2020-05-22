;;; cmyk-theme.el --- in pursuance of contrast

;; Author: u2zv1wx <u2zv1wx@protonmail.ch>
;; Version: 0.1

;; Copyright 2020 u2zv1wx

;;; Code:
(deftheme cmyk)

(let* ((c  "#00ffff")
       (m  "#ff00ff")
       (y  "#ffff00")
       (k0 "#000000")
       (k3 "#333333")
       (k6 "#666666")
       (k9 "#999999")
       (kc "#cccccc")
       (kf "#ffffff"))
  (custom-theme-set-faces
   'cmyk
   ;; Basic
   `(button ((t (:inherit (link)))))
   `(cursor ((t (:background ,m))))
   `(default ((t (:foreground ,kf :background ,k0))))
   `(highlight ((t (:background ,k0))))
   `(link ((t (:inherit font-lock-keyword-face :underline t))))
   `(minibuffer-prompt ((t (:foreground ,c))))
   `(next-error ((t (:inherit (region)))))
   `(query-replace ((t (:inherit (isearch)))))
   `(region ((t (:foreground ,k0 :background ,y))))
   `(secondary-selection ((t (:inherit (region)))))
   `(shadow ((t (:foreground ,k9))))
   `(tooltip ((t (:background ,kf :foreground ,k0))))
   `(trailing-whitespace ((t (:background ,y))))
   `(vertical-border ((t (:foreground ,kf))))
   `(fringe ((t (:foreground ,k0 :background ,k0))))
   `(line-number ((t (:foreground ,c :background ,k0))))
   `(line-number-current-line ((t (:inherit line-number))))
   ;; `(line-number-current-line ((t (:foreground ,c :background ,k3))))
   `(custom-button ((t (:box (:line-width 1 :color ,c)))))
   `(isearch ((t (:foreground ,k0 :background ,m))))
   `(lazy-highlight ((t (:foreground ,k0 :background ,y))))
   `(hl-line ((t (:background ,k3))))
   ;; `(hl-line ((t (:foreground ,k0 :background ,k3))))
   `(warning ((t (:foreground ,m))))

   ;; Font-lock
   `(font-lock-builtin-face ((t (:foreground ,y))))
   ;; `(font-lock-comment-face ((t (:foreground ,m :background ,k0))))
   `(font-lock-comment-face ((t (:foreground ,k9 :background ,k0))))
   `(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
   `(font-lock-constant-face ((t (:foreground ,m))))
   `(font-lock-doc-face ((t (:inherit (font-lock-comment-face)))))
   `(font-lock-function-name-face ((t (:foreground ,c))))
   `(font-lock-keyword-face ((t (:foreground ,c :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,m))))
   `(font-lock-string-face ((t (:foreground ,m))))
   `(font-lock-type-face ((t (:foreground ,y))))
   `(font-lock-variable-name-face ((t (:foreground ,c))))
   `(font-lock-warning-face ((t (:foreground ,m))))
   ;; `(font-lock-warning-face ((t (:foreground ,k0 :background ,c))))

   ;; mode-line
   `(mode-line ((t (:background ,k0 :foreground ,c))))
   `(powerline-active0 ((t (:background ,k0 :foreground ,c))))
   `(powerline-active1 ((t (:background ,c :foreground ,k0))))
   `(powerline-active2 ((t (:background ,c :foreground ,k0))))

   `(mode-line-inactive ((t (:background ,c :foreground ,k0))))
   `(powerline-inactive0 ((t (:background ,c :foreground ,k0))))
   `(powerline-inactive1 ((t (:background ,c :foreground ,k0))))
   `(powerline-inactive2 ((t (:background ,c :foreground ,k0))))

   `(mc/cursor-face ((t (:foreground ,k0 :background ,y))))

   ;; company
   `(company-echo-common ((t (:inherit (font-lock-comment-face)))))
   `(company-preview ((t (:inherit (font-lock-comment-face)))))
   `(company-preview-common ((t (:inherit (font-lock-comment-face)))))
   `(company-scrollbar-bg ((t (:background ,k3))))
   `(company-scrollbar-fg ((t (:background ,c))))
   `(company-template-field ((t (:inherit region))))
   `(company-tooltip ((t (:background ,k3))))
   `(company-tooltip-annotation ((t (:foreground ,c))))
   `(company-tooltip-annotation-selection ((t (:foreground ,k0))))
   `(company-tooltip-common ((t (:background ,k0 :foreground ,c))))
   `(company-tooltip-mouse ((t (:inherit highlight))))
   `(company-tooltip-search ((t (:inherit match))))
   `(company-tooltip-selection ((t (:inherit (region)))))

   `(custom-variable-tag ((t (:inherit font-lock-keyword-face))))
   `(custom-state ((t (:inherit font-lock-function-name-face))))

   `(diff-hl-change ((t (:foreground ,y :background ,y))))
   `(diff-hl-delete ((t (:foreground ,m :background ,m))))
   `(diff-hl-insert ((t (:foreground ,c :background ,c))))

   ;; outline-mode
   `(outline-1 ((t (:foreground ,c))))
   `(outline-2 ((t (:foreground ,c))))
   `(outline-3 ((t (:foreground ,c))))
   `(outline-4 ((t (:foreground ,c))))
   `(outline-5 ((t (:foreground ,c))))
   `(outline-6 ((t (:foreground ,c))))
   `(outline-7 ((t (:foreground ,c))))
   `(outline-8 ((t (:foreground ,c))))

   ;; org-mode
   `(org-date ((t (:foreground ,c :underline t))))
   `(org-block-begin-line ((t (:background ,c :foreground ,k0))))
   `(org-block ((t (:foreground ,kf :background ,k3))))
   `(org-block-end-line ((t (:background ,c :foreground ,k0))))
   `(org-todo ((t (:foreground ,y :weight bold))))
   `(org-done ((t (:foreground ,c :weight bold))))
   `(org-document-title ((t (:foreground ,c :weight bold))))

   `(haskell-type-face ((t (:inherit font-lock-type-face))))
   `(haskell-constructor-face ((t (:inherit haskell-type-face))))

   `(magit-branch-local ((t (:foreground ,c))))
   `(magit-branch-remote ((t (:foreground ,c))))
   `(magit-header-line ((t (:foreground ,c :weight bold))))
   `(magit-section-heading ((t (:foreground ,c :weight bold))))
   `(magit-diff-added ((t (:foreground ,c :inherit magit-diff-context))))
   `(magit-diff-added-highlight ((t (:foreground ,c :inherit magit-diff-context-highlight))))
   `(magit-diff-removed ((t (:foreground ,m :inherit magit-diff-context))))
   `(magit-diff-removed-highlight ((t (:foreground ,m :inherit magit-diff-context-highlight))))
   `(magit-log-author ((t (:foreground ,y))))

   `(flycheck-info ((t (:underline (:color ,c :style wave)))))
   `(flycheck-warning ((t (:underline (:color ,y :style wave)))))
   `(flycheck-error ((t (:underline (:color ,m :style wave)))))

   `(treemacs-root-face ((t (:inherit font-lock-keyword-face))))

   `(spaceline-flycheck-info ((t (:foreground ,c))))
   `(spaceline-flycheck-warning ((t (:foreground ,y))))
   `(spaceline-flycheck-error ((t (:foreground ,m))))
   )
  )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'cmyk)

;;; cmyk-theme.el ends here
