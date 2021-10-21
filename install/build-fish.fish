pushd .

mkdir /tmp/hilaolu -p && \
cd /tmp/hilaolu && \
git clone --depth=1 https://code.phyzait.moe/fish-shell/fish-shell.git && \
cd fish-shell && \
mkdir build && \
cd build && \
cmake -DCMAKE_INSTALL_PREFIX=$HOME/.local .. && \
make install -j4 && \
chsh -s $HOME/.local/bin/fish 

rm -rf /tmp/hilaolu/fish-shell 
popd
