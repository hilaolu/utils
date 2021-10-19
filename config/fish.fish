pushd .

cd Configs

set configs_dir (pwd)
set home_dir $HOME 

mkdir -p /tmp/hilaolu/trash
mkdir -p ~/.config

[ -d "$home_dir/.config/fish" ] && mv ~/.config/fish /tmp/hilaolu/trash  

ln -s $configs_dir/fish ~/.config/

popd
