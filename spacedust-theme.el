;;; spacedust-theme.el --- A light color theme with muted, autumnal colors.
;;;
;; Copyright 2018 Adam Alpern
;;
;; Author: Adam Alpern <adam.alpern@gmail.com>
;; Maintainer: Adam Alpern <adam.alpern@gmail.com>
;; URL: http://github.com/aalpern/emacs-color-theme-spacedust
;; Keywords: color, theme
;; Version: 1.0.0
;;
;;; License: MIT
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of
;; the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.
;;
;;; Commentary:
;;
;; To use it, add this file to a directory in your load-path, then put
;; the following in your Emacs configuration file:
;;
;;   (load-theme 'spacedust t)
;;
;;; Code:

(deftheme spacedust)

(let ((sdBlue0    "#0a1e24")
      (sdBlue1    "#0f548b")
      (sdBlue2    "#67a0ce")
      (sdBlue3    "#06afc7")
      (sdbrown0   "#684c31")
      (sdbrown1   "#6e5346")
      (sdOrange0  "#e35b00")
      (sdOrange1  "#ff8a3a")
      (sdOrange2  "#ffc878")
      (sdbeige    "#e3cd7b")
      (sdivory    "#ecf0c1")
      (sdcream    "#f0f1ce")
      (sdwhite    "#fefff1")
      (sdgreen1   "#aecab8")
      (sdgreen2   "#5cab96")
      (sdgreen3   "#83a7b4")
      (sdconcrete "#708284"))

  (let ((comments   sdbrown1)
        (background sdBlue0)
        (foreground sdivory)
        (header sdOrange0))

    (custom-theme-set-faces
     'spacedust

     `(default          ((t (:foreground ,foreground :background ,background :inherit nil))))
     `(fringe           ((t (:background ,sdBlue0))))
     `(cursor           ((t (:background ,sdOrange0))))
     `(highlight        ((t (:foreground "black" :background "green"))))
     `(region           ((t (:foreground "black" :background ,sdBlue2))))
     `(button           ((t (:inherit (link)))))
     `(link             ((t (:underline (:color foreground-color :style line) :foreground "green"))))
     `(link-visited     ((t (:foreground "green4" :underline (:color foreground-color :style line)))))
     `(show-paren-match ((t (:foreground "white" :background ,sdOrange0))))

     `(trailing-whitespace ((((class color) (background light)) (:background "DarkGreen"))
                            (((class color) (background dark)) (:background "DarkGreen"))
                            (t (:inverse-video t))))

     ;; font-lock
     `(font-lock-builtin-face              ((t (:foreground ,sdBlue2))))
     `(font-lock-comment-delimiter-face    ((t (:foreground ,comments))))
     `(font-lock-comment-face              ((t (:foreground ,comments))))
     `(font-lock-doc-face                  ((t (:foreground ,comments))))
     `(font-lock-constant-face             ((t (:foreground ,sdgreen2))))
     `(font-lock-function-name-face        ((t (:foreground ,sdBlue3))))
     `(font-lock-keyword-face              ((t (:foreground ,sdconcrete))))
     `(font-lock-negation-char-face        ((t (nil nil))))
     `(font-lock-preprocessor-face         ((t (:inherit (font-lock-builtin-face)))))
     `(font-lock-regexp-grouping-backslash ((t (:foreground ,sdconcrete))))
     `(font-lock-regexp-grouping-construct ((t (:foreground ,sdOrange0))))
     `(font-lock-string-face               ((t (:foreground ,sdgreen2))))
     `(font-lock-type-face                 ((t (:foreground ,sdOrange0))))
     `(font-lock-variable-name-face        ((t (:foreground ,sdOrange1))))
     `(font-lock-warning-face              ((t (:foreground "firebrick"))))

     ;; powerline
     `(powerline-active1   ((t (:foreground ,sdBlue0 :background ,sdconcrete))))
     `(powerline-active2   ((t (:foreground ,sdivory :background "black"))))
     `(powerline-inactive1 ((t (:foreground ,sdconcrete :background "black"))))
     `(powerline-inactive2 ((t (:foreground ,sdBlue2 :background "#1a1a1a"))))
     `(mode-line           ((t (:foreground "white" :background ,sdBlue1 :box nil))))

     ;; git-gutter
     `(git-gutter+-added    ((t (:foreground "green4" :background "green4"))))
     `(git-gutter+-modified ((t (:foreground "yellow" :background "yellow"))))
     `(git-gutter+-deleted  ((t (:foreground "red4" :background "red4"))))

     ;; web-mode
     `(web-mode-html-tag-face         ((t (:foreground ,sdgreen2 :weight bold))))
     `(web-mode-html-tag-bracket-face ((t (:foreground ,sdgreen2 :weight bold))))
     `(web-mode-html-attr-name-face   ((t (:foreground ,sdBlue2))))

     ;; js3-mode
     `(js3-external-variable-face ((t (:foreground "PaleGreen" :weight bold))))

     ;; markdown-mode
     `(markdown-header-face-1         ((t (:foreground ,sdOrange0 :weight bold))))
     `(markdown-header-face-2         ((t (:foreground ,header :weight bold))))
     `(markdown-header-face-3         ((t (:foreground ,header :weight bold))))
     `(markdown-header-face-4         ((t (:foreground ,header))))
     `(markdown-header-face-5         ((t (:foreground ,header))))
     `(markdown-header-face-6         ((t (:foreground ,header))))
     `(markdown-header-rule-face      ((t (:foreground ,sdOrange1 :weight bold))))
     `(markdown-header-delimiter-face ((t (:foreground ,header))))
     `(markdown-link-face             ((t (:foreground ,sdBlue2))))
     `(markdown-url-face              ((t (:foreground ,sdBlue1))))
     `(markdown-list-face             ((t (:foreground ,sdgreen2))))
     `(markdown-inline-code-face      ((t (:foreground ,sdivory
                                                       :background ,sdOrange0))))

     )))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'spacedust)

;;; spacedust-theme.el ends here
