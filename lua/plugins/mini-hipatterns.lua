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
        rust_todo = { pattern = 'todo!', group = 'MiniHipatternsTodo' },
        rust_unimplemented = { pattern = 'unimplemented!', group = 'MiniHipatternsHack' },
      },
    })
  end,
}
