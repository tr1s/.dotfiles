# ~/.dotfiles

This directory is designated to store my macOS `/.dotfiles`.

## Requirements

Ensure you have the following installed on your system

### Stow

```
brew install stow
```

## Installation

First, check out the dotfiles repo in your _$HOME_ directory using git

```
$ git clone git@github.com/tr1s/.dotfiles.git
$ cd .dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

If there's an error saying:

```
WARNING! unstowing folderName would cause conflicts:
  * existing target is neither a link nor a directory: .DS_Store
```

then run the following command to remove the `.DS_Store` files from the `.dotfiles` directory

```
find .dotfiles -name ".DS_Store" -depth -exec rm -f {} \;
```

Learn more—like how to use a custom ignore list, or handle conflicting files— by checkout out Dreams of Autonomy's video on the subject:

- [Stow has forever changed the way I manage my dotfiles](https://youtu.be/y6XCebnB9gs)

## Relevant links

- [Stow has forever changed the way I manage my dotfiles](https://youtu.be/y6XCebnB9gs)
- [~/.dotfiles in 100 Seconds](https://youtu.be/r_MpUP6aKiQ)
- [Dotfiles from Start to Finish-ish](https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/)
- [What is a Dotfile and How to Create it in Mac and Linux](https://www.freecodecamp.org/news/dotfiles-what-is-a-dot-file-and-how-to-create-it-in-mac-and-linux/)
- [Moving to zsh, part 6 – Customizing the zsh Prompt](https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/)

This next section below is taken from [Patrick McDonald](https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds/blob/master/README.md) – take [his course](https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/) to get a better understanding of all of this.
