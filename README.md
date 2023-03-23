# My portable `.zshrc`

### Prerequisites

- Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- nvm
```bash
brew install nvm
```
- pnpm
```bash
brew install pnpm
```
- git
```bash
brew install git
```

## How to

Make sure you have the prerequisites in place and then run the following command:
```bash
rm -rf ~/.zshrc && ln -s ~/<gitrepo>/zshrc ~/.zshrc && source ~/.zshrc
```

This makes `.zshrc` from the repo load when the terminal opens.
