local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
local keymap_set = require('utils.keymap_set')

telescope.setup({
  defaults = themes.get_dropdown({
    mappings = {
      i = {
        ['<C-s>'] = actions.select_horizontal,
        ['<C-v>'] = actions.select_vertical,
      },
    },
    borderchars = {
      ' ',
      ' ',
      ' ',
      ' ',
      ' ',
      ' ',
      ' ',
      ' ',
    },
    color_devicons = true,
    dynamic_preview_title = true,
    entry_prefix = '  ',
    initial_mode = 'insert',
    layout_config = {
      horizontal = {
        prompt_position = 'top',
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    layout_strategy = 'horizontal',
    path_display = {
      truncate = 3,
    },
    previewer = false,
    prompt_prefix = '» ',
    prompt_title = false,
    selection_caret = '  ',
    selection_strategy = 'reset',
    sorting_strategy = 'ascending',
    sroll_strategy = 'cycle',
    width = 0.8,
    winblend = 0,
    wrap_results = true,
  }),
})

keymap_set('n', '<Leader>ff', builtin.find_files)
keymap_set('n', '<Leader>fr', builtin.lsp_references)
keymap_set('n', '<Leader>fg', telescope.extensions.live_grep_args.live_grep_args)
