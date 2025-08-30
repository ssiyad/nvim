return {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          {
            name = '@vue/typescript-plugin',
            location = '/opt/homebrew/lib/node_modules/@vue/typescript-plugin',
            languages = { 'vue' },
            configNamespace = 'typescript',
          },
        },
      },
    },
  },
  filetypes = {
    'typescript',
    'javascript',
    'javascriptreact',
    'typescriptreact',
    'lua',
    'vue',
  },
}
