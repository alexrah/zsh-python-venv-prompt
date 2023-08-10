# [Oh-My-ZSH plugin] Python Virtualenv Prompt

The plugin provide a function usable inside a theme to display information about the active virtual container.

### Installation

To use it, add `zsh-python-venv-prompt` to the plugins array of your zshrc file:
```
plugins=(... zsh-python-venv-prompt)
```

### Usage

The plugin creates a `python_venv_prompt` function that you can use in your theme.

### Prompt

the prompt is made up of 2 components:
1. `$VIRTUAL_ENV`
2. `python --version`



### Examples
if `$VIRTUAL_ENV` basename equals **".venv"** such as `Python/my_venv_project/.venv` the prompt will extract the parent directory name:

``[my_venv_project-py{python_version}]``

otherwise, the basename will be used.

### Variables

Prompt can be customized by editing the following environment variables:

- `ZSH_THEME_VENV_PROMPT_PREFIX`: sets the prefix of the VIRTUAL_ENV. Defaults to `[`.

- `ZSH_THEME_VENV_PROMPT_SUFFIX`: sets the suffix of the VIRTUAL_ENV. Defaults to `]`.

- `ZSH_THEME_VENV_BASENAME`: sets a custom string overriding the data extracted from `$VIRTUAL_ENV`

- `ZSH_THEME_VENV_VERSION`: sets a custom string overriding the venv Python version
