# Clone my repository
mkdir ~/dev
cd ~/dev
git clone https://github.com/jonathanchiu/dotfiles.git
cd dotfiles

# Install Homebrew/Cask, zsh, and useful applications
xcode-select –install
ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
brew doctor
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew cask install sublime-text3
brew install zsh zsh-completions
brew cask install iterm2
brew cask install google-chrome

# Install patched Powerline fonts 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/powerline/fonts/master/install.sh)"

# Setup oh-my-zsh
chsh -s `which zsh`
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc ~
source ~/.zshrc

# Setup SSH keys
ssh-keygen -t rsa -b 4096 -C "jonathanchiu7@gmail.com" -N "" -f ~/.ssh/id_rsa
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub

git config --global user.name "Jonathan Chiu"
git config --global user.email "jonathanchiu7@gmail.com"

