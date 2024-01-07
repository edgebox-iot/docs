# 🖥️ Local Installation

This is the easiest way to get started with Edgebox. You can run it on your computer, without the need for a server. This is useful for testing and development purposes. This installation method uses a `multipass` Virtual Machine to run Edgebox.

## ☑ Prerequisites

- A Linux or Mac computer with [Git](https://git-scm.com/) and [Multipass](https://multipass.run/) installed

## ⚙️ Installation

- Clone the [multipass-setup repository](https://github.com/edgebox-iot/multipass-setup) and run the `make install` command:

```bash
git clone https://github.com/edgebox-iot/multipass-setup.git
cd multipass-setup
make install
```

- Wait for the installation to finish. This will take a while, as it will download the Edgebox system and install all the dependencies.
- Once the installation is finished, you can access the Edgebox system by going to [http://edgebox.local](http://edgebox.local) in your browser.

## 🛠️ Custom Virtual Machine configuration

The default configuration of the virtual machine is setup for an optimal local experience. With custom configuration, you can change the amount of CPU cores, RAM, disk space available, and name of the virtual machine, allowing you to run multiple Edgebox instances on the same computer. For advanced configuration information, check the [repository readme](https://github.com/edggebox-iot/multipass-config).
