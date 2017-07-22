
### Developer configs ###

# Git
git config --global color.ui true
git config --global user.name "Rafael Leandro"
git config --global user.email "rafaelleandro@me.com"
ssh-keygen -t rsa -C "rafaelleandro@me.com"

# Generate SSH
ssh-keygen -t rsa

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

#Fastlane
sudo gem install fastlane -NV

### System config ###

#Disable Creation of Metadata Files on USB Volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

#Install All Available Software Updates
sudo softwareupdate -ia

#Oh My Zsh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Homebrew
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brew install rbenv ruby-build
