pushd .

mkdir -p /tmp/hilaolu/neovim
cd /tmp/hilaolu/neovim

set home_dir $HOME
mkdir -p $home_dir/.local/bin

wget https://code.phyzait.moe/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz

tar xvf nvim-linux64*
rm *.gz

mv nvim*/nvim $home_dir/.local/bin/vi 

popd

