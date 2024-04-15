## [oh-my-zsh](https://ohmyz.sh/)

```sh
sudo dnf install zsh;
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab;
git clone https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-nvm;
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips;
source .zshrc

sudo dnf install eza
sudo dnf install bat

```

## ignore lid switch

<details>
  <summary>Info</summary>

1. Open the /etc/systemd/logind.conf file in a text editor as root, for example, sudo -H gedit /etc/systemd/logind.conf
2. If HandleLidSwitch is not set to ignore then change it: HandleLidSwitch=ignore. Make sure it's not commented out (it is commented out if it is preceded by the symbol #) or add it if it is missing.

</details>

## [gnome extentions](https://extensions.gnome.org/)

<details>
  <summary>Info</summary>

1. Vitals
2. Caffeine
3. Another windows session manager

</details>

## [nvchad](https://nvchad.com/)

```sh
dnf install gcc-c++;
sudo dnf install -y neovim python3-neovim;
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim;
```

## git

```sh
git config --global credential.helper store
```

## [vs-code](https://code.visualstudio.com/docs/setup/linux), chrome

```sh
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc;
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo';
dnf check-update
sudo dnf install code

sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable
```

## tmux

```sh
sudo dnf install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
```

## [docker](https://docs.docker.com/engine/install/fedora/)

```sh
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run
```

## [minikube + kubernetes + helm](https://docs.fedoraproject.org/en-US/quick-docs/using-kubernetes/)

```sh
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
sudo rpm -Uvh minikube-latest.x86_64.rpm
minikube start --vm-driver=docker

sudo dnf install kubernetes-kubeadm kubernetes-node kubernetes-client
sudo dnf install helm
```

## virtual machine manager

```sh
sudo dnf install @virtualization
```

## yarn global

```sh
yarn global add @asyncapi/generator @nestjs/cli pm2 typescript uglify-js
```

## task

```sh
sudo dnf install go-task
sudo ln -s /usr/bin/go-task /usr/bin/task
```

## autocomplete

```sh
sudo _mv _nest /usr/share/zsh/site-functions/
```

<details>
  <summary>Complete Files</summary>

1. nest - https://github.com/filipekiss/nestjs-cli-completion/
2. task - https://github.com/go-task/task/tree/main/completion

</details>

## net tools

<details>

1. nmap
2. burp suit
3. gobuster

</details>
