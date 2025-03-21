local M = {
  init_options = {
    plugins = {
      {
        name = '@vue/typescript-plugin',
        location = '/opt/homebrew/lib/node_modules/@vue/typescript-plugin',
        languages = {
          'javascript',
          'typescript',
          'vue',
        },
      },
    },
  },
  filetypes = {
    'javascript',
    'javascript.jsx',
    'javascriptreact',
    'typescript',
    'typescript.tsx',
    'typescriptreact',
    'vue',
  },
}

return M
