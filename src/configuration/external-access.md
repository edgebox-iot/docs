# 🌐 External Access

!!! success "The Cloud Version is accessible via the internet by default"

    The cloud version is accessible via the internet by default via `*username*.edgebox.io`, and its apps (when allowed) are accessible via `*username*-*appname*.edgebox.io`.

    If you still want to configure a custom domain name, we recommend you use the "**☁️ Cloudflare**" method.

Edgebox can run in a way that is only accessible in a local network, but it is recommended that you can access the system from the internet.
When internet accessible, you can configure a custom domain in the settings page of the web interface. This can be done either via direct connection or via a reverse proxy powered by CloudFlare.

## ☁️ Cloudflare

This is the recommended way to configure external access and it is supported across all versions. It allows you to use a custom domain, and also provides a layer of security and caching.

!!! info "How does it work?"

    This is done by authenticating your Cloudflare account, and using Cloudflare tunnels as a reverse proxy. Edgebox allows you to configure this directly from the dashboard without any technical knowledge, given that you complete the pre-requisites.

### Pre-requisites

- An account with [Cloudflare](https://www.cloudflare.com/) logged in in your browser
- A configured custom domain name in your account

??? note "How to configure a custom domain in Cloudflare"

    You will need to change the nameservers of your domain to the ones provided by Cloudflare.

    You can find more information on how to configure a custom domain in Cloudflare [here](https://support.cloudflare.com/hc/en-us/articles/201720164-Creating-a-Cloudflare-account-and-adding-a-website).

### Configuration

To configure Cloudflare, go to the settings page of the web interface, insert the domain name you want to configure, and click on the "Configure Cloudflare" button.

After a few seconds, a window will open and you will be asked to select the domain you want to use. Once you have completed this process, Edgebox establishes a connection to the custom domain automatically.

Once the settings display a successfull configuration, the dashboard will allow you to make your EdgeApps available via the internet 🎉

## 🔗 Direct Connection

When your edgebox system is accessible from the internet via IP Address, you can configure a custom domain in the settings page of the web interface.

!!! warning "Please be aware of the caveats of this method"

    A direct connection provides external access, but it can be insecure if you don't have technical knowledge. It allows you to use a custom domain, but it does not provide any security or caching.

!!! warning "Not fully supported in the Cloud version"

    Although it is possible to configure a custom domain name to directly access your cloud version instance, this requires manual approval and configuration by the core team and will not work out-of-the-box. Please reach out to us at [info@edgebox.io](mailto:info@edgebox.io) if you want to configure a custom domain that directly points to your cloud instance.

You will need to configure your domain to point to the IP address of your Edgebox system. This can be done by adding a DNS record of type `A` pointing to the public accessible IP of your Edgebox. You will also need to configure one CNAME entry per each edgeapp you have installed, or aditionally, a wild-card CNAME record.

### Configuration

To configure a custom domain, go to the settings page of the web interface, insert the domain name you want to configure, and click on the "_**Configure Domain**_" button.
