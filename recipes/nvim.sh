echo "############ installing Neovim ############"
if which nvim > /dev/null ; then
  echo "Neovim already installed. Skipping ..."
else
  sudo apt install software-properties-common
  sudo add-apt-repository --remove -y ppa:neovim-ppa/unstable
  sudo add-apt-repository -y ppa:neovim-ppa/unstable
  sudo apt update
  sudo apt install -y neovim
  sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
  sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
  sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
fi
echo "###########################################"
