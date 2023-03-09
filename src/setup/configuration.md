# Configuration

## Raspberry Pi Post Install

_The following only applies to installations on Raspberry Pi using the unattended installer as instructed in the [installation guide](./installation.md)_

Note, that this manual work can be done automatically during the installation process if the appropriate options in `installer-config.txt` are set.

Some sane defaults for Edgebox product development are pre-set, but you might want to tweak some of the parameters.

The default **root** password is **edgebox-root**.

- Set new root password: `passwd`
- Configure your default locale: `dpkg-reconfigure locales`
- Configure your keyboard layout: `dpkg-reconfigure keyboard-configuration`
- Configure your timezone: `dpkg-reconfigure tzdata`
- Create a swap file with `dd if=/dev/zero of=/swap bs=1M count=512 && chmod 600 /swap && mkswap /swap` (example is 512MB) and enable it on boot by appending `/swap none swap sw 0 0` to `/etc/fstab`

## Other platforms Post Install

If you're using the [image-builder repository](https://github.com/edgebox-iot/image-builder/) to create an image for any of the supported platofrms, you don't need to do any configuration. The image-builder repository will automatically configure the system for you as long as you follow the installation instructions.

## Configuring external access

Edgebox can run in a way that is only accessible in a local network, but it is recommended that you can access the system from the internet.
When internet accessible, you can configure a custom domain in the settings page of the web interface.

You will need to configure your domain to point to the IP address of your Edgebox system. This can be done by adding a DNS record. You will also need to configure one CNAME entry per each edgeapp you have installed. Unfortunately this step is not yet automated (_we plan to introduce automatic DNS configuration for CloudFlare in the future_).
