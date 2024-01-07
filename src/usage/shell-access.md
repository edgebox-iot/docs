# :octicons-terminal-16: Shell Access

You can access the Edgebox system shell via the dashboard, or using an `SSH` client. This can be useful to run advanced commands or configurations, as well as to troubleshoot issues.

!!! info "Cloud version users also have SSH shell access, and you should have received an e-mail with connection details."

## 🖥️ Accessing the shell via Dashboard

!!! warning "Please be aware of the caveats of this feature"

    This feature creates a randomly generated public accessible link that has direct access to the internal shell of Edgebox while the session is active. This temporary link cannot be infered or crawled automatically in any way, but it can still be accessed by anyone that knows it. This is useful for debugging issues or sharing temporary access with the core team or some trusted peers, but it is not recommended to access the system via terminal if you don't have technical knowledge, and you should always close the session once you are done.

To access the system via the dashboard, click on the "Shell Access" button on the settings page and wait a few seconds. A new tab will open where you can spawn terminal windows that interact directly with the Edgebox system shell.

Before you start a session, you can also setup a custom timeout for your session. By default this is 25 minutes.

![Shell Access](../assets/images/shell-access-overview.png#only-light)
![Shell Access](../assets/images/shell-access-overview-dark.png#only-dark)

!!! info "Every time you start a new session, a new shell is spawned"

    Every time you start a new session, a new shell is spawned. This means that if you start a new session, you will not see the output of previous sessions. The public link is also regenerated and will be unique and different from previous sessions.

## 📦 Accessing the shell via Terminal (Advanced)

!!! warning "Please be aware of the caveats of this feature"

    This feature is only recommended for advanced users. It is not recommended to access the system via terminal if you don't have technical knowledge. You should also be aware that SSH access provides full access to the system, and you should be careful when running commands or changing configurations, as this could cause issues in the system.

Access the system via `SSH` using the `ssh` command line tool. This is especially useful for developers and tinkerers that want advanced permanent access to the system.

### Cloud Version

To access the system via `SSH`, you will need to use the following command:

    ssh root@<IP_ADDRESS> -p <PORT_NUMBER>

You can find the IP address and port number in the e-mail you received with the connection details, as well as the auto-generated password for the `root` user that you can use (if you didn't already change it).

### Local Version

To access the system via `SSH`, you will need to head over to the `multipass-config` repository folder where you installed Edgebox, and use the following command:

    make shell

??? info "You can also use the `ssh` command directly"

    You can also use the `ssh` command directly, but you will need to use the `multipass` command to get the IP address and port number of your instance. You can find more information on how to do this in the configuration of Multipass.

??? info "For local users of multiple machines"

    If you have multiple machines running Edgebox, you can use the `make shell` with the hostname argument to access the shell of a specific instance.

### Raspberry Pi Version

??? warning "This feature is only available in local network mode for the Raspberry Pi version"

    Unless you have configured your Raspberry Pi to be accessible via the internet, you will only be able to access the system via `SSH` in the local network. In case the system is accessible via internet, you can use the machine IP address to access it via `SSH`

To access the system via `SSH`, you will need to be in the same local network as the machine, and use the following command:

    ssh <user>@edgebox.local

You can use either the `system` or `root` user and the chosen password during the installation process.
