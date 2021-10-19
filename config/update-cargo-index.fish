
set cargo_conf $HOME/.cargo/config

mkdir -p $HOME/.cargo

touch $cargo_conf

set result (cat $cargo_conf | grep 'source.crates-io')

if test -z $result
set append "
[source.crates-io]
replace-with = 'phyzait'

[source.phyzait]
registry = 'https://code.phyzait.moe/rust-lang/crates.io-index.git'
"

echo $append >> $cargo_conf

end
    
