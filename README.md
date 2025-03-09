# notation.nvim

neovim colorscheme inspired by physical media.

![notation-ss](https://github.com/user-attachments/assets/8a7eec92-d750-43f3-b96c-841e216961a3)

there are two variants: `notation-blackboard` (dark mode) and `notation-ballpoint` (light mode.)

they have exactly the same mappings, just different palettes.

## features
- the variant to use is determined by the value of `background` (`dark` or `light`)
- thoughtful, sensible color choices: non-distracting, but informative
- exactly enough information to keep in your brain at once

## installation & setup
1. install via any plugin manager e.g. `lazy.nvim`, `Plug`
2. put this in your `init.lua`:
```lua
vim.o.background = "dark" -- or "light"
require("notation").setup({
  -- add your custom highlights here, for example:
  comments = { italic = true },
  keywords = { fg = "red", bold = true },
  -- you can find the highlight group names in lua/highlight.lua
})
vim.cmd("colorscheme notation")
```

if you like to switch dark/light mode a lot like me, you might want to do something similar to what i have:

```lua
function theme_from_gtk()
  local handle = io.popen("gsettings get org.gnome.desktop.interface color-scheme")
  local result = handle:read("*a")
  handle:close()

  if result:find("dark") then
    vim.o.background = "dark"
  else
    vim.o.background = "light"
  end
  vim.cmd("colorscheme notation")
end
```

then call `theme_from_gtk` in autocmds or keymaps, for example:

```lua
-- Initial check
theme_from_gtk()

-- Check when focus gained or lost, and on write
vim.api.nvim_create_autocmd({ "FocusGained", "FocusLost", "BufWrite" }, {
  callback = theme_from_gtk
})

-- Bind to L
vim.keymap.set('n', 'L', '<Cmd>lua theme_from_gtk()<CR>')
```
 
