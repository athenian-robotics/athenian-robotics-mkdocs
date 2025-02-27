[![Netlify Status](https://api.netlify.com/api/v1/badges/8c3e891f-cbec-4599-9e06-53f6046d3dd1/deploy-status)](https://app.netlify.com/sites/athenian-robotics/deploys)

## Setup
1. Clone the [athenian-robotics-mkdocs](https://github.com/athenian-robotics/athenian-robotics-mkdocs) repo.
2. Install [MkDocs](https://www.mkdocs.org).
3. Install the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme.
4. Install the [Pygments](http://pygments.org/) syntax highlighter.
5. Install the [PyMdown Extensions](https://facelessuser.github.io/pymdown-extensions/) Markdown extensions.

```commandline
pipx install mkdocs mkdocs-material Pygments pymdown-extensions
```

## Makefile Targets
| Command               | Description                                   |
|:----------------------|:----------------------------------------------|
| `make website`        | Build the website in site/                    |
| `make clean`          | Delete site/                                  |
| `make serve`         | Start the live-reloading docs server          |

## Additional Athenian GitHub Organizations  
* [Athenian Programming](https://github.com/athenian-programming)
* [Athenian FLL](http://athenian-fll.org)