-- local ok_status, NeoSolarized = pcall(require, "NeoSolarized")
--
-- NeoSolarized.setup {
--   style = 'dark',
--   transparent = false, -- true/false; Enable this to disable setting the background color
--   background = '#aa2b36',
-- }
vim.g.material_style = "darker"
function ColorMyPencils(color)
  color = color or "material"
  vim.cmd.colorscheme(color)

  -- vim.cmd.colorscheme('habamax')
  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
