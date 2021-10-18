pushd .

mkdir -p /tmp/hilaolu/neovim
cd /tmp/hilaolu/neovim

set home_dir $HOME
mkdir -p $home_dir/.local/bin

wget https://code.phyzait.moe/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz && \
tar xvf nvim-linux64* && \
rm *.gz && \
mv nvim-linux64 $home_dir/.local/ && \
ln -s $home_dir/.local/nvim-linux64/bin/nvim $home_dir/.local/bin/.

popd

