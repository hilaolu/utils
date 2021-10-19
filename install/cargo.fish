env RUSTUP_DIST_SERVER='https://mirrors.tuna.tsinghua.edu.cn/rustup rustup install stable'

if not type -q 'cargo'
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
end


set DIR (dirname (status --current-filename))

fish $DIR/../config/update-cargo-index.fish

fish_add_path $HOME/.cargo/bin -p
