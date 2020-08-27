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