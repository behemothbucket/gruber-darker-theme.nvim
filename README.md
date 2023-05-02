# gruber-darker-theme.nvim
Inspired by gruber-darker-theme by **rexim**

Original theme: https://github.com/rexim/gruber-darker-theme)

Theme is not fully completed.

## Screenshots

### JavaScript (Windows Teminal, without Bold font)

![JavaScript](https://i.ibb.co/fxpSFXp/javascript.png)

### Lua (Windows Terminal, without Bold font)

![Lua](https://i.ibb.co/bB66HsV/image.png)

## Bash (Linux, yellow keywords are bold)

![Bash](https://i.ibb.co/JcxNMs5/image.png)

Font: Iosevka

## Installation

Packer:

```lua
use {
    'behemothbucket/gruber-darker-theme.nvim',
    config = function()
        require('gruber-darker').setup()
    end
}
```
