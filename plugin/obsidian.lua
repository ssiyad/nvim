-- Skip on machines without the vault: obsidian.nvim errors on start when no
-- workspace exists.
if not vim.uv.fs_stat(vim.fn.expand('~/notes')) then
  return
end

vim.pack.add({ 'https://github.com/obsidian-nvim/obsidian.nvim' })

-- Unique file names (YYYY-MM-DD-slug), so wiki links resolve the same in
-- Obsidian and here. See ~/notes/Home.md for the vault layout.
local function dated_id(title, path)
  return os.date('%Y-%m-%d') .. '-' .. require('obsidian.builtin').title_id(title, path)
end

require('obsidian').setup({
  legacy_commands = false,
  workspaces = {
    {
      name = 'Notes',
      path = '~/notes',
    },
  },
  -- New notes land in the inbox. Give them an area, then move them to their
  -- type folder: notes/, meetings/ or posts/.
  notes_subdir = 'inbox',
  new_notes_location = 'notes_subdir',
  note_id_func = dated_id,
  frontmatter = {
    sort = { 'id', 'aliases', 'type', 'area', 'tags' },
  },
  attachments = {
    folder = 'assets',
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
        notes_subdir = 'work-updates',
        note_id_func = function()
          return os.date('%G-W%V')
        end,
      },
      ['meeting-notes'] = {
        notes_subdir = 'meetings',
        note_id_func = dated_id,
      },
      post = {
        notes_subdir = 'posts',
        note_id_func = dated_id,
      },
      note = {
        notes_subdir = 'notes',
        note_id_func = dated_id,
      },
    },
  },
  daily_notes = {
    folder = 'journal',
    template = 'diary',
    date_format = '%Y/%Y-%m-%d',
    alias_format = '%B %-d, %Y',
    workdays_only = false,
    default_tags = {},
  },
  ui = {
    enable = true,
    ignore_conceal_warn = true,
  },
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'ObsidianNoteEnter',
  callback = function(ev)
    -- Quick switch notes.
    vim.keymap.set('n', '<leader>ff', '<cmd>Obsidian quick_switch<cr>', {
      buffer = true,
      desc = 'Quick switch notes',
      noremap = false,
    })
    -- Search in notes.
    vim.keymap.set('n', '<leader>fg', '<cmd>Obsidian search<cr>', {
      buffer = true,
      desc = 'Search in notes',
      noremap = false,
    })
    -- Change conceal level to 2 for better rendering of markdown.
    vim.wo.conceallevel = 2
  end,
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'ObsidianNoteLeave',
  callback = function(ev)
    -- Reset conceal level to 0 when leaving the note.
    vim.wo.conceallevel = 0
  end,
})
