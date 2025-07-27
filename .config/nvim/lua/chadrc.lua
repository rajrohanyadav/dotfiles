-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 
---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "onedark",

    hl_override = {
        Comment = {
            italic = true
        },
        ["@comment"] = {
            italic = true
        }
    },
    theme_toggle = {"onedark", "one_light"}
}

-- M.nvdash = { load_on_startup = true }
M.ui = {
    tabufline = {
        lazyload = false
    },
    telescope = {
        style = "borderless"
    } -- borderless / bordered
}

M.lsp = {
    signature = true
}

M.term = {
    base46_colors = true,
    winopts = {
        number = false,
        relativenumber = false
    },
    sizes = {
        sp = 0.3,
        vsp = 0.2,
        ["bo sp"] = 0.3,
        ["bo vsp"] = 0.2
    },
    float = {
        relative = "editor",
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single"
    }
}

M.colorify = {
    enabled = true,
    mode = "virtual", -- fg, bg, virtual
    virt_text = "󱓻 ",
    highlight = {
        hex = true,
        lspvars = true
    }
}

return M
