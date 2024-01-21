# rust-dev-environment-docker
Docker file with rust developemnt environment preinstalled (alpine, rust, neovim)

# install terminal

Download ["JetBrainsMono Nerd Font"](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip) and install it.

# run container in docker

    docker build --no-cache -t "extde/rust-dev-environment" .
    docker create -t --name rust-alpine extde/rust-dev-environment
    docker start rust-alpine
    docker exec -it rust-alpine ash -l
