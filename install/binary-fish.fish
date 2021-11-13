pushd .



sudo apt install gnupg curl -y
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:3.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null
sudo apt update
sudo apt install fish -y
# tar xvf nvim-linux64* && \
# rm *.gz && \
# mv nvim-linux64 $home_dir/.local/nvim -T && \
# [ -e "$home_dir/.local/nvim/bin/vi" ] || 
# ln -s $home_dir/.local/nvim/bin/nvim $home_dir/.local/bin/vi

popd
