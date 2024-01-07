# ☑ Post-Install Recommendations

After installing Edgebox, there are a few things you might want to do to further configure your system. These are non mandatory for useful for more advanced users.

Here's the most common post-install configurations across the available platforms:

## ☁️ Cloud Version Post Install

**If you're using the cloud version of Edgebox, you don't need to do any mandatory configuration.**

??? info "Change shell access password"

    A random password is generated for your instance and only sent to you, but you might want to set a password of your own for increased security. Use the connection details provided in the instance creation e-mail to ssh into your instance. From there you can run the `passwd` command to change the password for the `root` user. 

??? info "First dashboard access"

    You can access the dashboard at `https://<username>.edgebox.io` (replace `<username>` with your username) to get started (refer to [initial setup](/configuration/initial-setup) for more information).

## 🖥️ Local Version Post Install

**For local installations, there is no Post-Install configuration required.**

??? info "First dashboard access"

    You can access the dashboard at [http://edgebox.local](http://edgebox.local) to get started once the installation is finished (refer to [initial setup](/configuration/initial-setup) for more information).

## 📦 Raspberry Pi Post Install

_The following only applies to installations on Raspberry Pi using the unattended installer as instructed in the [installation guide](./installation/raspberry-pi)_

??? note "Manual configuration"

    This manual work can be done automatically during the installation process if the appropriate options in `installer-config.txt` are set. They are left out because they are not required for the installation to work.

Some sane defaults for Edgebox product development are pre-set, but you might want to tweak some of the parameters.

The default password for the _**root**_ user is _**edgebox-root**_.

??? info "Set new root password"

    SSH into your Raspberry Pi (`ssh <user>@edgebox.local`) with the user you want to change the password (either ***system*** or ***root***) and run the `passwd` command to change the password for the target user.

??? info "Configure your default locale"

    Run `dpkg-reconfigure locales` and select the locales you want to use. The default is `en_US.UTF-8` or whatever was configured in the installation config file.

??? info "Configure your keyboard layout"

    Run `dpkg-reconfigure keyboard-configuration` and select the keyboard layout you want to use. The default is `us` or whatever was configured in the installation config file.

??? info "Configure your timezone"

    Run `dpkg-reconfigure tzdata` and select the timezone you want to use. The default is `Europe/Lisbon` or whatever was configured in the installation config file.

??? info "Create a swap file"

    You might want to create a swap file to avoid running out of memory. To do so, run `dd if=/dev/zero of=/swap bs=1M count=512 && chmod 600 /swap && mkswap /swap` (example is 512MB) and enable it on boot by appending `/swap none swap sw 0 0` to `/etc/fstab`

## 😶‍🌫️ Other platforms Post Install

**If you're using the [image-builder repository](https://github.com/edgebox-iot/image-builder/) to create an image for any of the supported platofrms, you don't need to do any configuration.** The image-builder repository will automatically configure the system for you as long as you follow the installation instructions.

??? info "First dashboard access"

    You can access the dashboard at [http://edgebox.local](http://edgebox.local) to get started once the installation is finished (refer to [initial setup](/configuration/initial-setup) for more information).
