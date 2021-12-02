pushd .

git clone https://code.phyzait.moe/hilaolu/Configs.git --recursive


set DIR (dirname (status --current-filename))
fish $DIR/fish.fish
fish $DIR/neovim.fish
fish $DIR/tmux.fish

if not type -f himalaya >> /dev/null 
    fish $DIR/../install/rust-utils.fish
end

popd
