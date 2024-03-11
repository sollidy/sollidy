#### Fedora backup

```sh
sudo tar \
--exclude='/backup.tar.gz' \
--exclude='/proc' \
--exclude='/tmp' \
--exclude='/mnt' \
--exclude='/dev' \
--exclude='/sys' \
--exclude='/run' \
--exclude='/var/log' \
--exclude='/var/spool/abrt' \
--exclude='/var/cache/apt/archives' \
--exclude='/var/lib/docker' \
--exclude='/var/cache/apt/archives' \
--exclude='/home/*/.gvfs' \
--exclude='/home/*/.cache' \
--exclude='/home/*/.local/share/Trash' \
--exclude='/home/*/Videos' \
--exclude='/home/*/Downloads' \
--exclude='/home/*/Git' \
--exclude='/home/*/Music' \
--exclude='/home/*/.local/share/gnome-boxes/images' \
--exclude='/home/*/.local/share/TelegramDesktop' \
--exclude='/home/*/.yarn/berry/cache' \
--exclude='/home/*/.var/app/com.google.Chrome/cache' \
--exclude='/home/*/.config/libvirt/qemu/save' \
--exclude='/home/*/.config/yarn/global/node_modules' \
--exclude='/home/*/output.txt' \
--exclude='/home/*/.minikube/cache' \
-cvpzf /run/media/mark/Backup/backup.tar.gz / | tee output.txt
```

```sh
sudo tar -xvpzf /run/media/mark/Backup/backup.tar.gz -C /run/media/mark/fedora --numeric-owner;
cd /run/media/mark/Sys;
sudo mkdir proc tmp mnt dev sys run var/log
```

#### Yarn global

```sh
yarn global add uglify-js typescript pm2 pino-pretty http-server create-next-app @nestjs/cli @asyncapi/generator
```
