#! /bin/bash

# DOTFILES=(.bash_profile .gitconfig .gitignore .zshrc)

# for dotfile in $(echo ${DOTFILES[*]});
# do
#     cp ~/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
# done

# Check the default shell
if [ "$SHELL" = "/bin/zsh" ]; then
    DOTFILES=(.bash_profile .gitconfig .gitignore .zshrc)
elif [ "$SHELL" = "/bin/bash" ]; then
    DOTFILES=(.bash_profile .gitconfig .gitignore .bashrc)
else
    echo "Unsupported shell: $SHELL"
    exit 1
fi

# Loop through the DOTFILES array and copy each file
for dotfile in "${DOTFILES[@]}"; do
    cp ~/dotfiles/$dotfile ~/$dotfile
done
