# Contents of This File

- [User Documentation](#user-documentation)
    - [Docs Directory Structure & Setup](#docs-directory-structure-and-setup)
    - [Writing Documentation](#writing-documentation)
    - [Adding Docs to the Repo](#adding-docs-to-the-repo)

## User Documentation

This project contains [ADMIN] [DEVELOPER] [USER] documentation that is built using the [mkdocs](http://www.mkdocs.org) framework.

### Docs Directory Structure & Setup

The docs directory within a project repo would be as below:

```
project root
      |_ docs-setup
              |_ docs
                    |_ admin
                            |_ img
                    |_ css
                          |_ extra.css
                    |_ dev
                          |_ img
                    |_ user
                          |_ img
                    |_ index.md
              |_ docsite // auto-generated
              |_ Makefile
              |_ mkdocs.yml
              |_ Pipfile
              |_ Pipfile.lock
```

To add the docs directory to a project, copy the `docs-setup` folder and its contents over to the project root.

* The `docs` folder is where you create the various Markdown files, e.g. in `docs/admin`.
* Each documentation folder (`admin`, `dev`, `user`) has its own `img` folder. Please make sure to place any images in the appropriate `img` folder.
* When you run `make docs-build` for the first time, MkDocs will automatically create the `docsite` folder, and generate HTML files from your Markdown files.

### Writing Documentation

The following steps require the MkDocs Python package to be installed on your system. See [MkDocs](http://www.mkdocs.org/#installation) for installation instructions.

To update docs locally and view live changes, you need the following:

* Python 3.5 or higher
* Pipenv (see https://github.com/pypa/pipenv for installation instructions for your system)

To serve the docs, with live reload:
* [CUSTOMIZE FOR PROJECT] navigate to the docs directory
* Run `make docs-install`
* Run `make docs-serve`

Your local development copy of the docs will be available at http://127.0.0.1:8000/. Add or edit documentation as necessary.

### Adding Docs to the Repo

This docs setup requires `pngcrush` to reduce image sizes for documentation. If you don't already have it, you'll need to install it (there's a [brew](http://brewformulas.org/Pngcrush) package for it.)

To run a clean build of docs before committing changes:
* Navigate to the `docs-setup` directory
* Run `make docs-png`
* Run `make docs-build`

The compiled documentation files are in `docs-setup/docsite`. Though these are generated code, we commit them to the repo to avoid Bamboo shenanigans.
