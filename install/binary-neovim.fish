pushd .


set home_dir $HOME
set current (date '+%s')
set user (whoami)
set working_dir /tmp/$user-$current


mkdir -p $home_dir/.local/bin
mkdir -p /tmp/trash

mkdir -p $working_dir
cd $working_dir 

curl https://code.phyzait.moe/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz -o nvim-linux64.tar.gz && \
tar xvf nvim-linux64* && \
rm *.gz && \
mv nvim-linux64 $home_dir/.local/nvim -T && \
[ -e "$home_dir/.local/nvim/bin/vi" ] || 
ln -s $home_dir/.local/nvim/bin/nvim $home_dir/.local/bin/vi

popd

