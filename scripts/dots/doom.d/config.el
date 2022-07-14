;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(setq user-full-name "Austin Sparks"
      user-mail-address "aasparks93@gmail.com")


(setq doom-theme 'doom-outrun-electric)
(setq doom-font (font-spec :family "Inconsolata" :size 21))

(add-hook! 'rjsx-mode-hook 'prettier-js-mode)

(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

