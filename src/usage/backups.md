# 🔏 Backups

!!! info "This assumes you have already configured the backups system. If you haven't, please refer to the [Backups Configuration](/configuration/backups) page."

_**The backups section allows you to manage the automated backups of your Edgebox system**_. You can check the status of the backups, run a manual backup snapshot, reset your configuration.

![Backups overview](../assets/images/backups-overview.png)

## 🔎 Backups overview

This overview gives you a quick glance at the status of your current backups. You can see the following information:

- When was the last backup snapshot taken
- The total number of snapshots
- The status of the backups (if something is wrong, a message will show up)
- The total size of the backups and the total number of files in the backup

## 🔄 Manual backup snapshot

You can run a manual backup snapshot by clicking the "_**Start backup**_" button. This will run a backup snapshot immediately. A spinner will show up in place of the button until the snapshot is complete.

!!! info "The backup process can take a while, depending on the size of your data. Please be patient."

!!! info "Whenever the backups system displays a problem with an automated backup, usually running a manual backup snapshot will fix the problem."

## ❌ Reset backups configuration

If you want to reset the backups configuration, you can do so by clicking the "_**Reset configuration**_" button. This will reset the configuration to the default values, allowing you to reconfigure the backups system from scratch.

!!! info "This will not delete any remote backups you have already made. It will only reset the configuration of the backups system and stop the automated backups."

## 🛟 Restore from backup

You can restore your Edgebox system from a previous backup by re-configuring the backups system with connection information of a previously configured backups system.

When this is done, a "_**Restore**_" button in the Overview page. Clicking it will restore the last backu version in the backups remote location. Please be patient, as this process can take a while, and do not interrupt it.

!!! warning "This will restore the system to the state it was in when the backup was taken, and will irreversibly overwrite all the existing data on the Edgebox instance running. Use with caution."

!!! info "Unfortunately at this moment it is only possible to automatically restore the last backup snapshot. If you want to restore a previous snapshot, you will need to manually download it from the remote location, unencrypt it, and restore it manually."
