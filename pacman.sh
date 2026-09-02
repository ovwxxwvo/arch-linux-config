#!/usr/bin/env bash

sudo pacman -S \

# ========== 系统基础包 ==========
  base \
  base-devel \
  bash-completion \
  bash-preexec \
  cronie \
  dhcpcd \
  efibootmgr \
  haveged \
  grub \
  mdadm \
  networkmanager \
  ntp \
  os-prober \
  plocate \
  pulseaudio \
  pulseaudio-alsa \
  pulseaudio-bluetooth \
  sudo \

# ========== 内核 & 固件 & 硬件驱动 ==========
  linux \
  linux-firmware \
  linux-headers \
  amd-ucode \
  bluez \
  bluez-tools \
  bluez-utils \
  cpupower \
  acpilight \
  dfu-util \
  evtest \
  fbterm \
  kmscon \
  xf86-input-synaptics \
  xf86-video-amdgpu \
  xf86-video-ati \
  xf86-video-fbdev \
  radeontop \
  vulkan-headers \
  vulkan-mesa-layers \
  vulkan-tools \

# ========== 系统工具 & 命令行工具箱 ==========
  7zip \
  atool \
  bat \
  bc \
  btop \
  chafa \
  fd \
  fzf \
  ghostscript \
  imagemagick \
  iw \
  jq \
  joshuto \
  lsof \
  man-db \
  mdcat \
  minicom \
  neofetch \
  net-tools \
  nethogs \
  numlockx \
  ripgrep \
  rsync \
  screen \
  scrot \
  shellharden \
  shfmt \
  slurp \
  socat \
  sox \
  speech-dispatcher \
  tealdeer \
  tmux \
  tokei \
  traceroute \
  tree \
  unrar \
  unzip \
  uv \
  wget \
  xclip \
  xdotool \
  xmake \
  yt-dlp \
  zip \
  zoxide \
  prettier \

# ========== 网络工具 & 下载 & 镜像源 ==========
  aria2 \
  arp-scan \
  clash \
  curlftpfs \
  downgrade \
  openbsd-netcat \
  openssh \
  samba \
  smbclient \
  reflector \
  repo \
  archlinuxcn-keyring

# ========== 开发环境、编译器、语言、LSP ==========
  asm-lsp \
  bash-language-server \
  cargo-c \
  cargo-clone \
  cargo-modules \
  ccache \
  cmake \
  cmake-language-server \
  extra-cmake-modules \
  fretboard \
  go \
  gperf \
  lldb \
  lua-language-server \
  meson \
  mesa-demos \
  mesa-docs \
  mesa-utils \
  ninja \
  npm \
  pyright \
  python-beautifulsoup4 \
  python-black \
  python-isort \
  python-pip \
  python-pipenv \
  python-pipx \
  python-playwright \
  rust-analyzer \
  rustup \
  stylua \
  taplo-cli \
  termux-language-server \
  tree-sitter-bash \
  tree-sitter-cli \
  tree-sitter-python \
  tree-sitter-rust \
  typescript-language-server \
  vim-language-server \
  vscode-css-languageserver \
  vscode-html-languageserver \
  vscode-json-languageserver \
  uvicorn \
  yarn

# ========== 多媒体、音视频 ==========
  easytag \
  ffmpegthumbnailer \
  graphicsmagick \
  hydrogen \
  mixxx \
  mpv \
  musescore \
  showmethekey \
  wf-recorder

# ========== 图像、PDF、文档、字体 ==========
  adobe-source-han-sans-cn-fonts \
  adobe-source-han-sans-hk-fonts \
  adobe-source-han-sans-tw-fonts \
  gimp \
  libheif \
  mupdf \
  openslide \
  oxipng \
  poppler \
  poppler-data \
  poppler-glib

# ========== Sway / Wayland 窗口环境 ==========
  alacritty \
  arc-gtk-theme \
  darkman \
  grim \
  i3blocks \
  lemurs \
  qt5-wayland-decorations \
  sway \
  swaybg \
  swayidle \
  swayimg \
  swaylock-effects \
  wayland-protocols \
  wlr-randr \
  wev \
  wmctrl \
  xorg-twm \
  xorg-xclipboard \
  xorg-xkbprint \
  xorg-xwayland \
  xss-lock \
  xdg-desktop-portal-termfilechooser

# ========== Fcitx5 输入法 ==========
  fcitx5 \
  fcitx5-configtool \
  fcitx5-gtk \
  fcitx5-qt \
  fcitx5-rime \
  rime-wubi

# ========== Android工具 ==========
  android-apktool \
  android-tools

# ========== 虚拟机 & 模拟器 ==========
  virtualbox \
  virtualbox-guest-iso \
  virtualbox-guest-utils \
  virtualbox-host-dkms \
  qemu-base \
  qemu-docs \
  qemu-system-riscv \
  kodi-eventclients \
  kodi-tools-texturepacker

# ========== 浏览器 ==========
  firefox \
  firefox-adblock-plus \
  firefox-dark-reader \
  firefox-tridactyl \
  firefox-tridactyl-native

# ========== Ollama AI ==========
  ollama-docs \
  ollama-rocm

# ========== 代码工具 ==========
  cloc \
  ctags \
  namcap

# ========== 代码工具 ==========
  mpv-osc-thumbfast-git \
  mpv-osc-uosc \
  onlyoffice-bin \
  yuzu-early-access

