FROM rust:alpine

RUN apk add neovim git build-base ripgrep ca-certificates wget --update; \
    update-ca-certificate; \
    echo 'alias vim=nvim' >> /root/.profile; \
    git clone https://github.com/NvChad/NvChad /root/.config/nvim --depth 1;