# workspace-configuration
  A guide on how I configure my workspace (terminal, editor, plugins, custom themes, etc)

## Terminal application and configuration:

  - hyper-terminal: [download latest version](https://hyper.is/)
  - configuration file: [.hyper.js](./.hyper.js/)

## Console shell, framework and configuration:
  - first install homebrew with the command: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` on Terminal
  - then `brew install zsh`
  - install oh-my-zsh: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
  - apply changes: `source ~/.zshrc`
  - install powerline fonts:
    ```
      git clone https://github.com/powerline/fonts.git
      cd fonts
      ./install.sh
    ```
  - change to agnoster theme and change it to your custom theme included on this repository: CustomAgnoster.sh
  - get the syntax highlight plugin `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
  - add `zsh-syntax-highlighting` at plugins session on ./zshrc file
  - after that your terminal should look like this(includes react version if the project includes react on package.json):
  ![terminal](http://g.recordit.co/ZVdlebU4CM.gif)

## text editor:

  * Atom: [download latest version](https://atom.io/)
  * 90% of packages and the theme you need are in this article:
  https://medium.com/productivity-freak/my-atom-editor-setup-for-js-react-9726cd69ad20
