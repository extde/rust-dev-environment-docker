FROM rust:alpine

RUN apk add neovim neovim-doc git build-base ripgrep ca-certificates wget lldb tree-sitter curl --update; \
    rustup component add rust-analyzer; \
    rustup component add rustfmt; \
    git clone https://github.com/NvChad/NvChad /root/.config/nvim --depth 1; \
    git clone https://github.com/extde/rust-dev-environment-docker.git /tmp/rust; \
    cp -af /tmp/rust/custom /root/.config/nvim/lua/; \
    rm -rf /tmp/rust;