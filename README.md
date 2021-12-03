# Introduction

This repository installs configuration files for tools like zsh, vim, git, etc.

# Usage

Execute `install` script in scripts directory:

```
$ scripts/install
```

# Install Rules for Config Files

For each files in root directory (except this *README.md*) would be soft linked
to `$HOME` with dot (`.`) prefix. For example, *vimrc* is linked to *~/.vimrc*.

If there are any files in *scripts/* named pre_xxxx.sh, they will be executed
before linking and sourcing configuration files. For instance, pre_vimrc.sh is
executed before linking and sourcing vimrc.


