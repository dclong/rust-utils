# NAME: dclong/rust-utils
FROM dclong/rust
# GIT: https://github.com/legendu-net/docker-rust.git

RUN RUSTFLAGS="-C strip=symbols" cargo install --locked \
    ripgrep rm-improved bat du-dust zellij git-delta stork

# evcxr_jupyter
#RUN cargo install --git https://github.com/google/evcxr.git --branch main evcxr_jupyter \
#    && evcxr_jupyter --install
RUN cargo install evcxr_jupyter \
    && evcxr_jupyter --install
