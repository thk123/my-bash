# My Bash


Custom configuration for my Bash setup. To set up, modify .bashrc as follows:

## Import the prompt:

```bash
if [ -f ~/path/to/prompt.sh ]; then
    source ~/path/to/prompt.sh
fi
```

```bash
PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs
```

## Import the aliases

```bash
if [ -f ~/path/to/alias.sh ]; then
    ~/path/to/alias.sh
fi
```

## Other Tweaks

You can disable bell notification on tab-complete:

https://linuxconfig.org/turn-off-beep-bell-on-linux-terminal

> Disable a terminal tab-completion bell by editing `/etc/inputrc` and add / replace line:

```
set bell-style none
```

## Setting up PowerShell

### Install Windows Terminal

https://www.microsoft.com/en-gb/p/windows-terminal/9n0dx20hk701?rtc=1&activetab=pivot:overviewtab

### Install Posh-Git

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm
```

```
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
```

Test it worked:

```
Import-Module posh-git
```

Prompt should be changed if inside a git repo. Now put the [profile](Microsoft.PowerShell_profile.ps1) into `$PROFILE` (probably `C:\Users\Thomas\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`)
