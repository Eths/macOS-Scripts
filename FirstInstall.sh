
### Developer configs ###

# Git
git config --global color.ui true
#git config --global user.name "USER"
#git config --global user.email "user@me.com"
#ssh-keygen -t rsa -C "user@me.com"

# Generate SSH
ssh-keygen -t rsa

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Ruby
sudo gem install bundler
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby
rbenv install 2.3.1
rbenv global 2.3.1
ruby -v

#Pip
## install command line tools
xcode-select --install
## Install pip
sudo easy_install pip
pip --version
sudo pip install --upgrade pip

# Fastlane
sudo gem install fastlane -NV

# CocoaPods
sudo gem install cocoapods

# Danger
git clone https://github.com/danger/danger.git
cd danger
bundle install
bundle exec rake spec

# Xcode
sudo xcrun cc

# Enable Safari Developer and Web Inspector
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write -g WebKitDeveloperExtras -bool true

### System config ###

# Disable Creation of Metadata Files on USB Volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable Creation of Metadata Files on Network Volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Terminal focus follows mouse
defaults write com.apple.Terminal FocusFollowsMouse -string YES

# Install All Available Software Updates
sudo softwareupdate -ia

# Oh My Zsh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


### Finder ###
# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true
