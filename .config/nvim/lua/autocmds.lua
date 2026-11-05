require "nvchad.autocmds"

-- follow the macOS appearance (dark -> theme_toggle[1], light -> theme_toggle[2])
local function sync_theme()
  vim.system({ "defaults", "read", "-g", "AppleInterfaceStyle" }, { text = true }, function(res)
    vim.schedule(function()
      local cfg = require("nvconfig").base46
      local want = res.stdout:match "Dark" and cfg.theme_toggle[1] or cfg.theme_toggle[2]
      if cfg.theme ~= want then
        cfg.theme = want
        require("base46").load_all_highlights()
      end
    end)
  end)
end

vim.api.nvim_create_autocmd({ "VimEnter", "FocusGained" }, { callback = sync_theme })
