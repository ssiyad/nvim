return {
  'nvim-mini/mini.hipatterns',
  config = function()
    local hipatterns = require('mini.hipatterns')

    hipatterns.setup({
      highlighters = {
        fixme = { pattern = 'FIX:', group = 'MiniHipatternsFixme' },
        hack = { pattern = 'HACK:', group = 'MiniHipatternsHack' },
        todo = { pattern = 'TODO:', group = 'MiniHipatternsTodo' },
        note = { pattern = 'NOTE:', group = 'MiniHipatternsNote' },
        bug = { pattern = 'BUG:', group = 'MiniHipatternsFixme' },
        refactor = { pattern = 'REFACTOR:', group = 'MiniHipatternsHack' },
        fixme_ = { pattern = 'Fix!', group = 'MiniHipatternsFixme' },
        hack_ = { pattern = 'Hack!', group = 'MiniHipatternsHack' },
        todo_ = { pattern = 'Todo!', group = 'MiniHipatternsTodo' },
        note_ = { pattern = 'Note!', group = 'MiniHipatternsNote' },
        bug_ = { pattern = 'Bug!', group = 'MiniHipatternsFixme' },
        refactor_ = { pattern = 'REFACTOR:', group = 'MiniHipatternsHack' },
        rust_todo = { pattern = 'todo!', group = 'MiniHipatternsTodo' },
        rust_unimplemented = { pattern = 'unimplemented!', group = 'MiniHipatternsHack' },
      },
    })
  end,
}
