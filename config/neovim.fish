pushd .


cd Configs

set configs_dir (pwd)
set home_dir $HOME 

mkdir -p /tmp/hilaolu/trash
mkdir -p ~/.local/share
mkdir -p ~/.config

[ -d "$home_dir/.config/nvim" ] && mv ~/.config/nvim /tmp/hilaolu/trash
[ -d "$home_dir/.local/share/nvim" ] && mv ~/.local/share/nvim /tmp/hilaolu/trash

ln -s $configs_dir/nvim-local ~/.local/share/nvim
ln -s $configs_dir/nvim ~/.config 

popd
