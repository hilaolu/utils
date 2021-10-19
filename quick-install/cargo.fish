if not type -q 'cargo'
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
end


set DIR (dirname (status --current-filename))

fish $DIR/update-cargo-index.fish
