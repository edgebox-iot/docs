# :material-update: Updates

Edgebox is open source, and we are constantly working on improving it. We release new versions regularly, and you can update your system to the latest version at any time.

Updates include improvements to both the core system and the edgeapps. You can check the changelog for each edgeapp in the [EdgeApps](usage/edgeapps) section.

!!! success "Cloud version users don't need to worry about updates, as they are automatically applied. You can still manually update your system if you want to."

## 🖥️ Updating the systen via the dashboard

!!! note "We are stil working on this."

    This feature is still in development and not ready for general use. Sorry for the inconvenience. This section will be updated once general availability is reached.

## 📦 Updating the system via Terminal (Advanced)

Access the system via shell and run the following command:

    edgebox --update

!!! warning "Please be aware of the caveats of this method"

    This method is only recommended for advanced users. It is not recommended to update the system via terminal if you don't have technical knowledge. During the update process, the system can become unavailable for a few seconds, and all apps will also be updated, which could cause them to become unavailable if there are any issues during the update process.
