![image alt text](https://github.com/Cute-Ducky/dotfiles/blob/main/images/logo.PNG)
<h1 align="center">Welcome to my nixos ❄️ dotfiles </h1>
<p>
</p>

> My nixos dotfiles/config deployed as a flake
<img title="screenshot" alt="rice" src="/images/screenshot1.png">

### ❄️ [nixos](https://nixos.org/)

# Getting started:
## Git clone the repo to the ~/.dotfiles folder
```sh
git clone https://github.com/Cute-Ducky/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```
## Open a nix-shell
```sh
nix-shell
```
## Apply on a new system
This is a alias to `cp-hardware` and `apply`.
```sh
task new-system
```
## snow-os
```sh
task new-system-snow
```

## Usage

### Apply

```sh
task apply
```

### Build iso
```
task iso
```
### Buid iso flash-os
```
task flash-os-iso
```
### Pull update from upstream
```sh
task pull
```
to pull and apply a update just simpily run:
```sh
task pull apply
```
## Configs

| Name.       | Description |
| ----------- | ----------- |
| Nixconf     | The standard config |
| Snow   | More minimal version of nixconf        |
| Flash-OS | More beginner friendly config with patheon desktop |
| Server | Config build to be used on a server |
## Need a custome config?
Contact me in a issue and we can discuss the details. Obviosly this service is free.
## Author

👤 **9glenda**

* Github: [@9glenda](https://github.com/9glenda)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/9glenda/dotfiles/issues). 

## Show your support

Give a ⭐️ if this project helped you!
