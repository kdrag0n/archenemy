# ArchEnemy Linux

A spin of Arch's official archiso live rescue disk with additional tools, tailored for my use.

# Changes
  - ZFS support (using the ArchZFS repository)
  - `multilib` Pacman repository enabled
  - NetworkManager installed and enabled (allows easy Wi-Fi network connection via `nmcli`)
  - Simple `nmcli` connection guide in `/root`
  - Useful, modern tools bundled (`ripgrep`, `neovim`, `htop`, `exa`, `aria2c`, etc.)
  - Pre-configured aria2c Pacman downloader (disabled by default)
  - `powerpill` Pacman download accelerator for slow connections
  - Broadcom BCM43xx (`b43`) Wi-Fi chipset firmware included
  - HiDPI-compatible Terminus console fonts installed
  - Pre-configured HiDPI `kmscon` console setup with Fira Code font
  - PassMark MemTest86 (free edition) bundled for UEFI machines
  - Automatic login on all VTs rather than just `tty0`
  - Enlarged live COW space (30% as compared to the default of 256 MiB)
  - Pre-ranked Pacman mirror list with top speeds as tested near Seattle, WA
