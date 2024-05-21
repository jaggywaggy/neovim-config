-- Set up the Lua require path to include your config directory
local config_path = vim.fn.stdpath('config') .. '/lua/?.lua;' .. vim.fn.stdpath('config') .. '/lua/?/init.lua;'
package.path = config_path .. package.path

-- Now you can require your modules normally
require('config')
require('keymaps')
require('plugins.packer')

-- For the `after/treesitter` which seems like a specific setup, ensure it's a module or adjust accordingly
require('after.treesitter')

