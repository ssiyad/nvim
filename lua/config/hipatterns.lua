local M = {
  highlighters = {
    fixme = { pattern = 'Fix!', group = 'MiniHipatternsFixme' },
    hack = { pattern = 'Hack!', group = 'MiniHipatternsHack' },
    todo = { pattern = 'Todo!', group = 'MiniHipatternsTodo' },
    note = { pattern = 'Note!', group = 'MiniHipatternsNote' },
    bug = { pattern = 'Bug!', group = 'MiniHipatternsFixme' },
    refactor = { pattern = 'Refactor!', group = 'MiniHipatternsHack' },
    rust_todo = { pattern = 'todo!', group = 'MiniHipatternsTodo' },
    rust_unimplemented = { pattern = 'unimplemented!', group = 'MiniHipatternsHack' },
  },
}

return M
