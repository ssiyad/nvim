vim.pack.add({ 'https://github.com/obsidian-nvim/obsidian.nvim' })

require('obsidian').setup({
  legacy_commands = false,
  workspaces = {
    {
      name = 'Notes',
      path = '~/notes',
    },
  },
  notes_subdir = 'notes',
  new_notes_location = 'notes_subdir',
  note_id_func = function(title, path)
    local id = require('obsidian.builtin').title_id(title, path)
    local year = os.date('%Y')
    local month = os.date('%m')
    local day = os.date('%d')
    return year .. '/' .. month .. '/' .. day .. '/' .. id
  end,
  attachments = {
    folder = './assets',
    confirm_img_paste = false,
    img_name_func = function()
      return vim.fn.system('uuidgen'):gsub('%s+', '')
    end,
  },
  templates = {
    folder = 'templates',
    date_format = '%d %B %Y - %A',
    time_format = '%H:%M',
    customizations = {
      blog = {
        notes_subdir = 'blog',
        note_id_func = require('obsidian.builtin').title_id,
      },
      ['work-update'] = {
        note_id_func = function()
          local year = os.date('%Y')
          local month = os.date('%m')
          local day = os.date('%d')
          local week = os.date('%V')
          return year .. '/' .. month .. '/' .. day .. '/work-update-week-' .. week
        end,
      },
    },
  },
  daily_notes = {
    template = 'diary',
    date_format = '%Y/%m/%d/diary',
    alias_format = '%B %-d, %Y',
    workdays_only = false,
    default_tags = {
      'daily',
      'journal',
      'log',
    },
  },
  ui = {
    enable = true,
  },
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'ObsidianNoteEnter',
  callback = function(ev)
    vim.keymap.set('n', '<leader>ff', '<cmd>Obsidian quick_switch<cr>', {
      buffer = true,
      desc = 'Quick switch notes',
      noremap = false,
    })
    vim.keymap.set('n', '<leader>fg', '<cmd>Obsidian search<cr>', {
      buffer = true,
      desc = 'Search in notes',
      noremap = false,
    })
  end,
})
