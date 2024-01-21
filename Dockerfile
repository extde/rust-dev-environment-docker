FROM rust:alpine

RUN apk add neovim git build-base ripgrep ca-certificates wget; \
    rustup component add rust-analyzer; \
    git clone https://github.com/NvChad/NvChad /root/.config/nvim --depth 1;