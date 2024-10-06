# gruber-darker-theme.nvim
Inspired by gruber-darker-theme by **rexim**

Original theme: https://github.com/rexim/gruber-darker-theme

Theme is not fully completed.

## Screenshots

### JavaScript (Windows Teminal, without Bold font)

![JavaScript](https://i.ibb.co/fxpSFXp/javascript.png)

## Bash (Linux, yellow keywords are bold)

![Bash](https://i.ibb.co/JcxNMs5/image.png)

Font: Iosevka

## Installation

### Lazy

```lua
{
    'behemothbucket/gruber-darker-theme.nvim',
    priority = 1000,
    lazy = false,
    config = function()
        require('gruber-darker').setup()
        vim.cmd('colorscheme gruber-darker')
    end,
}
```
