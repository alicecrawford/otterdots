mv ~/.config/nvim ~/.config/nvim.bak
cp -R ~/.local/share/nvim ~/.local/share/nvim.bak
cp -R ~/.local/state/nvim ~/.local/state/nvim.bak
rm -rf ~/.local/share/nvim ~/.local/share/nvim
mv ~/.cache/nvim ~/.cache/nvim.bak
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
# remove template's git connection to set up your own later
rm -rf ~/.config/nvim/.git
