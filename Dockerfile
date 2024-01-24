FROM rust:alpine

RUN apk add neovim neovim-doc git build-base ripgrep ca-certificates wget lldb tree-sitter --update; \
    rustup component add rust-analyzer; \
    rustup component add rustfmt; \
    git clone https://github.com/NvChad/NvChad /root/.config/nvim --depth 1;