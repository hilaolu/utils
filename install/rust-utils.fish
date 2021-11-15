# set utils "du-dust" "ripgrep" "fd-find" \
# "exa" "bat" "procs" "hyperfine" \
# "choose" "tealdeer" "sd"
# 
# 
# set DIR (dirname (status --current-filename))
# fish $DIR/cargo.fish
# 
# fish_add_path $HOME/.cargo/bin -p
# 
# cargo install $utils

# ytop bandwhich grex
pushd .

mkdir -p /tmp/rust-utils

cd /tmp/rust-utils

wget https://github.com/hilaolu/rust-utils/releases/latest/download/rust-utils.tar.xz && \
mkdir ~/.local/bin && \
tar xf rust-utils.tar.xz -C ~/.local/bin && \
rm rust-utils.tar.xz

popd