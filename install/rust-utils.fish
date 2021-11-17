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

wget https://code.phyzait.moe/hilaolu/rust-utils/releases/latest/download/rust-utils.tar.gz && \
mkdir -p ~/.local/bin && \
tar xf rust-utils.tar.gz -C ~/.local/bin && \
rm rust-utils.tar.gz

popd