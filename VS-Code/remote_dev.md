# Remote Development

This allows you to use a container, remote machine, or WSL as a full-featured development environment. (Copied from VS Code's site)

## Requirement

- Visual Studio Code Insiders
- Remote Development extension ([link](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack))

## WSL

### Windows side

1. You need WSL on your machine of course
2. Install VS Code Insiders & Remote Development extension pack
3. *(Recommended)* `git config --global core.autocrlf false`

### WSL side

1. Go to a folder you'd like to open in VS Code
2. `code-insiders .`, and that's it!
  For the first time, you should see VS Code fetching needed components. Just wait for a while.

For known limitations and more information, refer [here](https://code.visualstudio.com/docs/remote/wsl)

## References

- [Docs](https://code.visualstudio.com/docs/remote/)
