echo "Set up git defaults"
git config --global user.email "paul@paulnorthup.com"
git config --global user.name "Paul Northup"
git config --global push.default simple
echo "Create global gitignore"
git config --global core.excludesfile ~/.gitignore_global
