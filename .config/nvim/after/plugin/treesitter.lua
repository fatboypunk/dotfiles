require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "ruby", "go", "c", "lua", "vim", "vimdoc", "query",
    "eex",
    "elixir",
    "erlang",
    "heex",
    "html",
    "surface",
  },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting = false,
  },
}
