pushd .

cd Configs

set configs_dir (pwd)
set home_dir $HOME 

mkdir -p /tmp/hilaolu/trash

[ -d "$home_dir/.tmux" ] && mv ~/.tmux /tmp/hilaolu/trash  
[ -e "$home_dir/.tmux.conf" ] && mv ~/.tmux.conf /tmp/hilaolu/trash  
[ -e "$home_dir/.tmux.conf.local" ] && mv ~/.tmux.conf.local /tmp/hilaolu/trash  

ln -s $configs_dir/tmux ~/.tmux
ln -s $configs_dir/tmux/.tmux.conf ~
ln -s $configs_dir/tmux/.tmux.conf.local ~

popd
