# notation.nvim

neovim colorscheme inspired by physical media.

![notation-ss](https://github.com/user-attachments/assets/533fa84e-4795-45ac-b78a-cf4e87605612)

i originally made it out of the desparation that there were no light colorschemes that fit my very specific preferences. once i had perfected it, i realised i would never be satisfied without a dark mode equivalent.

so now there are two variants: `notation-blackboard` (dark mode version) and `notation-ballpoint` (original light mode version.) they have exactly the same mappings, just different palettes.

## features
- the variant to use is determined by the value of `background` (`dark` or `light`)
- thoughtful, sensible color choices: non-distracting, but informative
- exactly enough information to keep in your brain at once
- it's very good and you will like it

## installation & setup
- via any plugin manager e.g. lazy.nvim, Plug
- put this in `init.lua`: `require('notation')` (or put it inside a lua block if you use `init.vim`)
- later in the file: `vim.cmd("colorscheme notation")`

actually, if you like to switch dark/light mode a lot like me, you might want to do something similar to what i have:

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
 
