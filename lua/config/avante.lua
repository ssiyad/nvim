local M = {
  provider = 'copilot',
  providers = {
    copilot = {
      model = 'claude-3.7-sonnet',
      extra_request_body = {
        timeout = 30000,
        temperature = 0.75,
        max_completion_tokens = 8192,
      },
    },
  },
  selector = {
    provider = 'fzf_lua',
  },
}

return M
