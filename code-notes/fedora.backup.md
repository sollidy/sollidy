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
--exclude='/media' \
--exclude='/var/log' \
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
-cvpzf /run/media/mark/BACKUP/backup.tar.gz / | tee output.txt
```
