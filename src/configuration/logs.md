# 📄 Logs

## 🗺️ Overview

Edgebox periodically reads logs from the various services and components and gathers them in a folder in the system. You can access these logs via the dashboard, or via the command line for easier inspection and manipulation.

## 📝 Accessing logs

### Dashboard

To access the logs via the dashboard, you can check two different sources:

- The logs section in the settings page (for core component logs)
- The logs section in the edgeapp details page (for edgeapp speficic logs)

### Command line

To access the logs via the command line, you can use `tail` to follow the logs in real time.

```bash
tail -f /home/system/components/logs/*.log
```

## 📁 Logger Component

The log files are stored in the `/home/system/components/logs` folder. Each component has its own log file, and the logs are capped at 10.000 lines. When the log file reaches this limit, the oldest lines are removed.

This is done via the `Logger` component, which is a simple component that periodically reads the logs from all the other components and running apps, and stores them in a predictable location.

For more information about the `Logger` component and its inner workings, check the [GitHub Repository](https://github.com/edgebox-iot/logger) page.
