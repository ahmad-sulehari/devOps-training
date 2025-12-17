# Links Followed
- [Upgrade bash version on mac os](https://www.shell-tips.com/mac/upgrade-bash/#gsc.tab=0)
- [Installing GNU Coreutils on mac os](https://smallsharpsoftwaretools.com/tutorials/gnu-mac/)

# Commands Used

## install latest bash
```bash
brew install bash
source ~/.zshenv
bash --version
```

## install coreutils and set PATH
```bash
brew install coreutils
brew --prefix coreutils # --prefix is use to display installation path
# output woutld be the path of coreutils /opt/homebrew/opt/coreutils
# if we don't want to set path we can use 'g' prefix such as gls for gnu ls
# paste the following in the shell env file
# export PATH='/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH'
source ~/.zshenv

which ls
# output: /opt/homebrew/opt/coreutils/libexec/gnubin/ls
```
