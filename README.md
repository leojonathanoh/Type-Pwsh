# Type-Pwsh

[![github-actions](https://github.com/leojonathanoh/Type-Pwsh/workflows/ci-master-pr/badge.svg)](https://github.com/leojonathanoh/Type-Pwsh/actions)
[![github-release](https://img.shields.io/github/v/release/leojonathanoh/Type-Pwsh?style=flat-square)](https://github.com/leojonathanoh/Type-Pwsh/releases/)
[![powershell-gallery-release](https://img.shields.io/powershellgallery/v/Type-Pwsh?logo=powershell&logoColor=white&label=PSGallery&labelColor=&style=flat-square)](https://www.powershellgallery.com/packages/Type-Pwsh/)

Type `pwsh` like you would type any language 🙃.

## Install

Open [`powershell`](https://docs.microsoft.com/en-us/powershell/scripting/windows-powershell/install/installing-windows-powershell?view=powershell-5.1) or [`pwsh`](https://github.com/powershell/powershell#-powershell) and type:

```powershell
Install-Module -Name Type-Pwsh -Repository PSGallery -Scope CurrentUser -Verbose
```

If prompted to trust the repository, hit `Y` and `enter`.

## Examples

```powershell
Import-Module Type-Pwsh

# Let's try to find out what something is
what is 240,159,144,145

# Let's try and find out more
tellme what is 240,159,144,145
tellme what could be 240,159,144,145

# And even more
explain what is 240,159,144,145
# X.X
```
