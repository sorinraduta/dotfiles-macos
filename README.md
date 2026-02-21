<p align="center">
  <img height="100" width="100" src="dotfiles.svg" />
  <h3 align="center">Dotfiles</h3>
</p>

## Installation

This repository uses [GNU Stow](https://www.gnu.org/software/stow/) to manage and organize dotfiles via symlinks.

> **Important:** Clone this repository into your home directory (`~`), e.g. `~/dotfiles`. Symlinks created by stow will assume the repository is in `~`.

1. **Clone the repository to your home directory** and `cd` into it:
   ```sh
   $ cd ~
   $ git clone <repo-url> dotfiles
   $ cd dotfiles
   ```
2. **Install stow** if you haven't already:
   ```sh
   $ brew install stow   # On macOS with Homebrew
   ```
3. **Stow the desired components** (this will symlink the relevant files/folders into your home directory):
   ```sh
   $ stow aerospace
   $ stow sketchybar
   $ stow hammerspoon
   ```
   This will symlink:
   - `aerospace/.aerospace.toml` to `~/.aerospace.toml`
   - `sketchybar/.config/sketchybar` to `~/.config/sketchybar`
   - `hammerspoon/.hammerspoon` to `~/.hammerspoon`

   Alternatively, stow everything at once: `$ stow *`


## Content

### Features

- Tiling window manager with workspace-based app rules (browsers, editors, terminals, etc.).
- Top bar with workspaces, clock, volume, battery, CPU temp, and weather.
- Cmd+Return to launch/focus terminal app.

### Components

| Component | Description |
|-----------|-------------|
| **Window manager** | [AeroSpace](https://github.com/nikitabobko/AeroSpace) – Tiling WM with tiles/accordion layouts, gaps, and vim-style keys (alt-hjkl). |
| **Bar** | [Sketchybar](https://github.com/FelixKratz/Sketchybar) – Top bar with workspace indicators, clock, volume, battery, CPU temp, weather. |
| **Automation** | [Hammerspoon](https://www.hammerspoon.org/) – Automation and scripting framework for macOS |
| **Font** | [Hack Nerd Font](https://www.nerdfonts.com/font-downloads) – Developer-oriented font with additional icons |
