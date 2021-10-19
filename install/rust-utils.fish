set utils "du-dust" "ripgrep" "fd-find" \
"exa" "bat" "procs" "hyperfine" \
"choose" "tealdeer"


set DIR (dirname (status --current-filename))
fish $DIR/cargo.fish

fish_add_path $HOME/.cargo/bin -p
cargo install $utils
