final: prev: {
  g-alacritty = prev.callPackage ./g-alacritty { };
  g-polybar = prev.callPackage ./g-polybar { };
  g-lf = prev.callPackage ./g-lf { };
  g-neovim = prev.callPackage ./g-neovim { };
  g-pistol = prev.callPackage ./g-pistol { };
  g-rofi = prev.callPackage ./g-rofi { };
  g-termite = prev.callPackage ./g-termite { };
  g-firefox = prev.callPackage ./g-firefox { };
  g-starship = prev.callPackage ./g-starship { };
  zsh-forgit = prev.callPackage ./zsh-forgit { };
  shell-config = prev.callPackage ./shell-config { };
  lightcord = prev.callPackage ./lightcord { };
}
