# Edgebox Docs

This repository contains the documentation for the Edgebox project, from a overall usage and configuration perspective.

If you're looking for technical documentation regarding the Edgebox codebase, please refer to the respective repository for documentation.

This project is built using [Mkdocs](https://www.mkdocs.org).

## Running locally

The quickest way to get going is using the provided docker-compose setup:

```bash
docker-compose up
```

Once up navigate to `http://localhost:8000`.

This setup provides file watching so any new changes will force the site to be rebuilt.

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
mkdocs build
mkdocs gh-deploy
```
