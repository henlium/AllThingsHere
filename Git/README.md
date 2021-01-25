# Git

Git configuration and some other things.

[toc]

## Config

`gitconfig`

- For global-level configiration, put the config file at `~/.gitconfig`.
- For repo-level (--local) configuration, refer to `.git/config`

## Commit Message Template

You can easily use `-m` option to write your commit message.

Or, you can set up a file to be the template for commit message in the config file at `[commit]->template`. This template will be opened for edit if you omit the `-m` flag.

> `.gitmessage` is an commit message template example.