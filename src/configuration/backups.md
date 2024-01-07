# 🔏 Backups

Edgebox allows you to backup to a remote location to ensure your data is safe even after catastrophic failure. It is a simple and straightforward way to backup your data and restore it if needed. Backups are encrypted before transit and decrypted after transit, so they are fully secure and only accessible by you.

## 🗓️ Automated Backups

!!! warning "This feature is currently in active development and might exhibit unstabilitly. For now, we recommend that additional backups are made manually to fully ensure your data is safe."

### ℹ️ How does it work

- Edgebox supports a variety of backup services, as long as they are S3 compatible. You can choose the one that best suits your needs.
- Once you choose a service, you should configure a bucket to store your backups. You can choose to create a new bucket, or use an existing one.
- You will need to provide your credentials in the Edgebox dashboard backups configuration page.
- Once this is configured, your Edgebox will incrementally auto-backup your data to the configured service every hour.
- If you ever need to restore your Edgebox system (in the same instance or a new one), you can do so by configuring previously configured credentials, and choosing one of the snapshots in the backups page of the dashboard.

### ✍️ Choosing a service

Any of the supported services are good options, and you can choose the one that best suits your needs in terms of pricing and support options.

!!! info "Just want to get this done?"

    If you don't have a preference, we recommend you use [Wasabi](https://wasabi.com/), as it is the most cost-effective option.

![Supported Providers](https://edgebox.io/img/section-backups-services.jpeg)

#### Backblaze B2

Backblaze B2 is a all-round cloud storage service that is fully compatible with the S3 protocol. It is a good option for Edgebox users because it is very simple to setup, and one of the most cost-effective options that can be used to backup other devices and systems without technical knowledge, using their client apps.

[Sign up for Backblaze B2](https://www.backblaze.com/b2/sign-up.html?referrer=edgebox){ .md-button }

#### Wasabi

Wasabi is a cloud storage service that is fully compatible with the S3 protocol. It is a good option for Edgebox users because it is very cost-effective, and as easy to setup as BackBlaze.

[Sign up for Wasabi](https://wasabi.com/edgebox/){ .md-button }

#### Amazon S3

Amazon S3 is the original cloud storage service. With unparallel usage, it is the most popular option, and as easy to configure. Creating an AWS account gives you access to a variety of services, and it is a good option if you already use other AWS services.

[Sign up for Amazon S3](https://aws.amazon.com/s3/){ .md-button }

### 🔐 Obtaining your credentials

For any of the supported services, you will need to obtain your credentials to configure the backups system. These are:

- **Access Key ID** - The Account Access Key
- **Secret Access Key** - The Account Secret Key, which is a password-like credential
- **Bucket ID/Name** - The name of the bucket you want to use to store your backups. A bucket should be used exclusively for Edgebox backups, and should not be used for other purposes. This bucket should be created in your service of choice, before configuring the backups system in the Edgebox dashboard.

#### Backblaze

- Log in to your Backblaze account
- Go to the [B2 Cloud Storage Buckets](https://secure.backblaze.com/b2_buckets.htm) page
- Click on the "Create a Bucket" button
- Choose a name for your bucket, and click on the "Create a Bucket" button
- Click on the "Show Account ID and Application Key" button
- Copy the "Application Key ID" and the "Application Key" to a safe place
- Click on the "Hide Account ID and Application Key" button
- Go to the [B2 Cloud Storage Buckets](https://secure.backblaze.com/b2_buckets.htm) page
- Click on the name of the bucket you created
- Copy the "Bucket ID" to a safe place

!!! warning "If you lose your credentials, you will need to regenerate them, so we recommend you keep them in a safe place for personal reference if you need to restore your system in the future."

### ⚙️ Configuring the backups system

!!! note "We are stil working on this section. It will be available soon."

### 📂 Restoring a backup

!!! note "We are stil working on this section. It will be available soon."

## 📦 Manual Backups

Aditionally to the automated backups, you can also manually backup your data to an external storage device with a simple set of shell commands.

This is useful if you want to keep a copy of your data in a different location, or if you want/need to manually restore your Edgebox system to a previous state.

!!! info "Although we care deeply about the data of Edgebox users, due to the nature of how the system ensures privacy, it is ultimately you the sole responsible for the data your store and consume using Edgebox. It is a good practice to maintain regular manual backups of your data, and keep them in a safe location."

### ☑ Prerequisites

- Enough storage space to store a copy of your data. Please check the [storage](/usage/storage) page in your dashboard to know how much this might be in advance.
- Your computer should have a terminal with `rsync` installed. This is usually the case in most Linux distributions and MacOS. If you are using Windows, you can use [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) to get a Linux terminal in your computer.

### 🐚 Backup via Terminal

To copy all usable data from your Edgebox and compress it during transmission, you may use the following command:

    rsync -avz -e ssh root@<IP_ADDRESS>:/home/system/components/ ./edgebox-backup-folder/

In this command:

- `-a` stands for "archive" which preserves the files permissions, ownerships etc.
- `-v` stands for "verbose" that makes the operation talkative.
- `-z` stands for "compression" that compresses the data as it is sent to the destination machine, which reduces the amount of data being transmitted (good for slow networks).
- `-e` ssh specifies the ssh as the shell which rsync will use to connect to the remote machine.

Replace `<IP_ADDRESS>` with the actual IP Address and `./edgebox-backup-folder/` with the directory where you'd want to keep the backup on your local machine.

!!! info "You can also use the hostname of your Edgebox instead of the IP Address  when using the Raspberry Pi version locally or with a custom domain. Example: `root@edgebox.local`"

??? info "You should create compressed archives of the backup folder for easier management"

    The backup folder will contain a lot of files, and it is recommended that you create a compressed archive of the folder to save space and make it easier to transfer.

    You can do this by running the following command:

    ```bash
    tar -czvf edgebox-backup-folder.tar.gz ./edgebox-backup-folder/
    ```
    This will create a compressed `edgebox-backup-folder.tar.gz` archive from the `./edgebox-backup-folder/` directory.
