# Dot Files

Here are my config and setup files for various features and tools on macOS. It's not all just 'rice'.

My linux dot files are [here](https://github.com/brettinternet/dotfiles-linux).

## Automatic Setup
~~```rake install```~~
Not available yet, I'm still working on the `Rakefile`

### Manual Setup
#### System Preferences
To set preferred system preferences when setting up a new Mac, run
```sh
./.macos
```

#### Homebrew
1. Install Homebrew
```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. Install some common Homebrew formulae with
```sh
./brew.sh
```

3. Install casks with
```sh
./brew-cask.sh
```

#### zsh
1. install [prezto](https://github.com/sorin-ionescu/prezto)
2. replace [.zpreztorc](./zsh/prezto-override)

While I use Prezto, [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) is a more popular option.


Set zsh as your default shell
```sh
chsh -s /bin/zsh
```

###### Updating Prezto
```sh
cd .zprezto && git pull && git submodule update --init --recursive
```

### NPM
```sh
npm i -g node-gyp nodemon forever bower babel-cli gulp gulp-cli webpack webpack-dev-server
```

## Other setup
- additional zsh
- vim
- tmux
- ranger
- MPD for audio
- aliases, functions, exports
- gitconfig
- mutt
- ctags
- [wallpapers](./walls)
- ubersicht widgets
- iterm2
- firefox extensions/custom css
- chrome extensions
- fonts
- pycarddav
- Use Karabiner-Elements (installed from `brew cask`) to remap `capslock` key to function as `escape`

### Fonts
- [FiraCode with ligatures](https://github.com/tonsky/FiraCode)


## Other Apps
Most of my apps are installed via `brew-cask.sh`.
- Microsoft Remote Desktop

#### Chrome
- [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en) - vim style browsing. Notably, the `f` to type the two char alias of any link.
- [Humble New Tab Page](https://chrome.google.com/webstore/detail/humble-new-tab-page/mfgdmpfihlmdekaclngibpjhdebndhdj?hl=en) - simple customization for new tab, see [configuration](./chrome/humble-tab-settings.json).
- [Reddit Enhancement Suite](https://chrome.google.com/webstore/detail/reddit-enhancement-suite/kbmfpngjjgdllneeigpgjifpgocmfgmb?hl=en-US)

#### Firefox
- [Stylish](https://addons.mozilla.org/en-US/firefox/addon/stylish/)
  - Add [stylesheet](./firefox/gruvfox.less)
- [VimFX](https://addons.mozilla.org/en-us/firefox/addon/vimfx/developers) - Vimium alternative to Firefox. Don't use the Vimium port to Firefox, it's bad.

### Window managers - not suggested for laptops/smaller screens
- [KWM](https://github.com/koekeishiya/kwm)
- [HyperDock](https://bahoom.com/hyperdock/)

### Themes
- [Gruvbox](https://github.com/morhetz/gruvbox)
- [Nord](https://github.com/arcticicestudio/nord)

## Other Resources
### UI
- [Reddit: Beautiful Unix UI setups](https://www.reddit.com/r/unixporn/)

### Credits
This is a collection of my own configs and some found on the web.
- [mathiasbynens](https://github.com/mathiasbynens/dotfiles)
- [skwp](https://github.com/skwp/dotfiles)
- [Mac setup](http://sourabhbajaj.com/mac-setup/index.html)
- [Unix subreddit](https://reddit.com/r/unixporn)


See also my [public notes](https://github.com/brettinternet/public-notes).
