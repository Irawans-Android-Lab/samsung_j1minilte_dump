#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY:14655488:e63f074a06032f6ad0542b69fe5ff850e3706705; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdio_emmc/by-name/KERNEL:13920256:2a4dcd603e627ecd5e55dadd201d575d22fa1aa4 EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY e63f074a06032f6ad0542b69fe5ff850e3706705 14655488 2a4dcd603e627ecd5e55dadd201d575d22fa1aa4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
