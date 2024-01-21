FROM rust:alpine

RUN apk add neovim git musl-dev; \
    apk update; \
    apk add ca-certificates wget; \
    update-ca-certificate; \
    echo 'alias vim=nvim' >> /root/.profile; \
    git clone https://github.com/NvChad/NvChad /root/.config/nvim --depth 1;