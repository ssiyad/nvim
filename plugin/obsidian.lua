vim.pack.add({ 'https://github.com/obsidian-nvim/obsidian.nvim' })

require('obsidian').setup({
  legacy_commands = false,
  workspaces = {
    {
      name = 'Notes',
      path = '~/notes',
    },
  },
  note_id_func = function(title)
    local date = os.date('%Y-%m-%d')
    local formatted = title:gsub(' ', '-'):lower() or ''
    return date .. '-' .. formatted .. '.md'
  end,
  attachments = {
    folder = './assets',
    confirm_img_paste = false,
    img_name_func = function()
      local random = math.random
      local s = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
      return string.gsub(s, '[xy]', function(c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
      end)
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
      ['meeting-notes'] = {
        notes_subdir = 'meetings',
      },
      ['work-updates'] = {
        notes_subdir = 'work-updates',
      },
    },
  },
  daily_notes = {
    folder = 'diary',
    template = 'diary',
    alias_format = '%B %-d, %Y',
    workdays_only = false,
    default_tags = {
      'dialy',
      'journal',
      'log',
    },
  },
  ui = {
    enable = true,
  },
  completion = {
    nvim_cmp = false,
    blink = true,
    min_chars = 1,
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
