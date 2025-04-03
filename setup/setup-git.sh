# Meant to be edited before running

# Install

sudo apt install git-lfs
sudo apt install gitk

# Setup
git config --global user.name "YOUR NAME"
git config --global user.email "userid@example.com"

git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/KEY.PUB
git config --global commit.gpgsign true

git config --global init.defaultBranch main
git config --global push.default simple

