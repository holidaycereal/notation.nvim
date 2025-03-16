# notation.nvim

neovim colorscheme inspired by physical media.

there are two variants:

| `notation-blackboard` | `notation-ballpoint` |
| --------------------- | -------------------- |
| ![notation-blackboard-demo](https://github.com/user-attachments/assets/67188bcc-4fc8-4c80-ac48-c0ce6bc916bc) | ![notation-ballpoint-demo](https://github.com/user-attachments/assets/29e42689-1dfd-45b0-a6d7-37f7a0bb9172) |

they have exactly the same mappings, just different palettes.

## features
- the variant to use is determined by the value of `background` (`dark` or `light`)
- thoughtful, sensible color choices: non-distracting, but informative
- exactly enough information to keep in your brain at once

## installation & setup
1. install via any plugin manager e.g. `lazy.nvim`, `Plug`
2. put this in `init.lua`:
```lua
vim.cmd("colorscheme notation")
```

if you like to switch dark/light mode a lot like me, you might want to do something similar to what i have:

```lua
function theme_from_gtk()
  local handle = io.popen("gsettings get org.gnome.desktop.interface color-scheme")
  local result = handle:read("*a")
  handle:close()
  vim.o.background = result:find("dark") and "dark" or "light"
  vim.cmd("colorscheme notation")
end
```

then call `theme_from_gtk` in autocmds or keymaps, for example:

```lua
-- Initial check
theme_from_gtk()

-- Check when focus gained or lost, and on write
vim.api.nvim_create_autocmd(
  { "FocusGained", "FocusLost", "BufWrite" },
  { callback = theme_from_gtk }
)

-- Bind to L
vim.keymap.set('n', 'L', '<Cmd>lua theme_from_gtk()<CR>')
```
 
