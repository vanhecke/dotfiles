#dotfiles
Things I use on el capitan:

- TextMate2
- Fish shell with the Oh-My-Fish framework
- iTerm2
- Homebrew package manager
- base16 tomorrow theme
- hack font


**Procedure**:

0. `./defaults.sh` if you want
1. Install iterm2.app
2. Install homebrew
3. Install homebrew packages (look below)
4. Set Fish as default shell `sudo echo '/usr/local/bin/fish' >> /etc/shells; sudo chsh -s /usr/local/bin/fish`
5. Install [Oh-My-Fish](https://github.com/oh-my-fish/oh-my-fish)
6. Copy .config dir from this repo
7. Run `omf update`
8. Set colors + font in TextMate & iTerm


## Commands
Cool commands available with this homebrew/fish/ohmyfish config:

- `battery` shows a battery bar in terminal    
- `fuck` corrects your last command (like adding sudo)    
- `kill-on-port` kills processes based on TCP port
- `cdf` cd to the current Finder directory
- `itunes` Controle iTunes. Play, pause, stop, resume, etc.
- `manp` Open a specified man page in Preview
- `pfd` Return the path of the frontmost Finder window
- `pfs` Return the current Finder selection
- `pushdf` pushd to the current Finder directory
- `ql` Quick Look a specified file or directory
- `trash` Move a specified file to the Trash
- `z` allows you to do `z x` in stead of `cd ~/a/b/c/d/y/x`

This runs automatically:

- `grc` is a Generic Colouriser in python (adds colour to logs (`cat`) and commands (`ps`, `ping`))    
- `set_color` package adds extra colors to Fish's set_color `set_color -c --pretty`

There is also extra command completion for:
`brew`, `rvm`, `bundler` and `gem`

<hr>
## defaults (defaults.sh)
#### System
Disable startup sound    
`sudo nvram SystemAudioVolume=" "`    
Show IP, OS version, etc. when clicking the login window clock    
`sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName`    
Expand save panel by default    
`defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true`     
Disable smart quotes    
`defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false`    
Disable smart dashes     
`defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false`     
.DS Dont Write on Network Stores    
`defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true`     
Restart on freeze    
`sudo systemsetup -setrestartfreeze on`    

#### Finder
Disable desktop icons    
`defaults write com.apple.finder CreateDesktop false`    
Show hidden files in finder    
`defaults write com.apple.Finder AppleShowAllFiles YES`    
Disable warning on extension change    
`defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false`    
Set finder views to List    
`defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"`    
QuickLook Enable Text Selection    
`defaults write com.apple.finder QLEnableTextSelection -bool true`    

#### Mail
Only copy the email to clipboard    
`defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false`    

#### TextEdit
Use simple .txt in stead of richtext by default    
`defaults write com.apple.TextEdit RichText -int 0`     
Use utf8    
`defaults write com.apple.TextEdit PlainTextEncoding -int 4`     
`defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4`    
<hr>
### brew packages
```
brew install binutils
brew install binwalk
brew install caskroom/cask/brew-cask
brew install coreutils
brew install dex2jar
brew install findutils --with-default-names
brew install fish
brew install fortune
brew install gcc
brew install homebrew/versions/gcc49
brew install git
brew install gnu-sed --with-default-names
brew install grc
brew install htop-osx
brew install hydra
brew install john
brew install lftp
brew install libidn
brew install libksba
brew install libyaml
brew install moreutils
brew install mutt
brew install mysql
brew install nmap
brew install node --with-openssl
brew install qemu
brew install screenfetch
brew install socat
brew install speedtest_cli
brew install sqlmap --HEAD
brew install ssh-copy-id
brew install tarsnap
brew install thefuck
brew install unrar
brew install wget --with-iri --with-libressl
brew install z
brew tap homebrew/services`