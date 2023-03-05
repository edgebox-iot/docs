# Edgebox Docs

This repository contains the documentation for the Edgebox project, from a overall usage and configuration prespective.
If you're looking for technical documentation regarding the Edgebox codebase, please refer to the respective repository for documentation.

This project uses Mkdocs. For full documentation visit [mkdocs.org](https://www.mkdocs.org).

## Installation

### Prerequisites

- Python 3.6 or higher

### Install Dependencies

```bash
pip install -r requirements.txt
```

## Commands

- `mkdocs serve` - Start the live-reloading docs server.
- `mkdocs build` - Build the documentation site.
- `mkdocs -h` - Print help message and exit.

## Project layout

```bash
    mkdocs.yml    # The configuration file.
    src/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.
```

## Contributing

Any contributions are welcome. Please open a pull request with your changes, and we will review them.

### Adding a new page

To add a new page, create a new markdown file in the `src` directory. Then, add the page to the `nav` section of `mkdocs.yml`:

```yaml
nav:
  - Home: index.md
  # (...)
  - New Page: new-page.md
```

## Deployment

This project is deployed to [GitHub Pages](https://pages.github.com/) automatically on push to the main branch. To deploy manually, run:

```bash
mkdocs gh-deploy
```
