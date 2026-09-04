#!/usr/bin/env bash

sudo pacman -S \

# ========== system === ========== ==========
  amd-ucode \
  linux \
  linux-firmware \
  linux-headers \
  base \
  base-devel \
  efibootmgr \
  grub \
  sudo \
  downgrade \
  mdadm \
  rsync \
  openssh \
  man-db \

# ========== driver === ========== ==========
  mesa \
  mesa-utils \
  vulkan-radeon \
  vulkan-icd-loader \
  vulkan-tools \
  vulkan-headers \
  vulkan-devel \

# ========== service == ========== ==========
  networkmanager \
  iw \
  bluez \
  bluez-tools \
  bluez-utils \
  pulseaudio \
  pulseaudio-alsa \
  pulseaudio-bluetooth \
  samba \
  smbclient \

# ========== font ===== ========== ==========
  ttf-jetbrains-mono \
  ttf-jetbrains-mono-nerd \
  adobe-source-han-sans-cn-fonts \
  adobe-source-han-sans-hk-fonts \
  adobe-source-han-sans-tw-fonts \

# ========== compress = ========== ==========
  atool \
  tar \
  7zip \
  zip \
  unzip \
  unrar \

# ========== network == ========== ==========
  clash \
  arp-scan \
  lsof \
  socat \
  aria2 \
  wget \
  yt-dlp \

# ========== terminal = ========== ==========
  lemurs \
  tmux \
  fish \
  yazi \
  nvim \
  mpv \
  mpv-osc-uosc \
  mpv-osc-thumbfast-git \
  fbterm \
  alacritty \
  qemu-base \
  qemu-system-riscv \
  qemu-docs \
  ollama \
  opencode \
  ollama-vulkan \
  ollama-rocm \
  ollama-docs \

# ========== application ========= ==========
  fcitx5 \
  fcitx5-configtool \
  fcitx5-qt \
  fcitx5-gtk \
  fcitx5-rime \
  rime-wubi \
  sway \
  swaybg \
  i3blocks \
  swayidle \
  swaylock-effects \
  xorg-xwayland \
  grim \
  slurp \
  wf-recorder \
  wlr-randr \
  xdg-desktop-portal-termfilechooser \
  virtualbox \
  virtualbox-host-dkms \
  virtualbox-guest-utils \
  virtualbox-guest-iso \
  firefox \
  firefox-adblock-plus \
  firefox-dark-reader \
  firefox-tridactyl \
  firefox-tridactyl-native \
  yuzu-early-access \
  onlyoffice-bin \

# ========== lsp ====== ========== ==========
  ctags \
  tree-sitter-cli \
  tree-sitter-bash \
  tree-sitter-python \
  tree-sitter-rust \
  bash-language-server \
  pyright \
  lua-language-server \
  vim-language-server \
  vscode-json-languageserver \
  vscode-css-languageserver \
  vscode-html-languageserver \
  typescript-language-server \
  rust-analyzer \
  asm-lsp \
  cmake-language-server \
  termux-language-server \
  shellharden \
  shfmt \
  python-black \
  python-isort \
  stylua \
  taplo-cli \
  prettier \

# ========== develop == ========== ==========
  ccache \
  cmake \
  xmake \
  meson \
  ninja \
  gperf \
  extra-cmake-modules \
  lldb \
  rustup \
  cargo-c \
  cargo-clone \
  cargo-modules \
  python \
  python-pip \
  python-playwright \
  uv \
  npm \
  yarn \
  jq \
  uvicorn \
  wayland-protocols \
  android-apktool \
  android-tools \

# ========== media ==== ========== ==========
  gimp \
  mixxx \
  hydrogen \
  musescore \
  easytag \
  fretboard \

# ========== tool ===== ========== ==========
  tealdeer \
  bash-completion \
  bash-preexec \
  evtest \
  wev \
  showmethekey \
  fzf \
  fd \
  ripgrep \
  plocate \
  tree \
  bc \
  cloc \
  oxipng \
  btop \
  nvtop \
  chafa \
  neofetch


