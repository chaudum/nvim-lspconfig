local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

configs.cucumber_language_server = {
  default_config = {
    cmd = { 'cucumber-language-server', '--stdio' },
    filetypes = { 'cucumber' },
    root_dir = util.find_git_ancestor,
  },
  docs = {
    description = [[
https://cucumber.io
https://github.com/cucumber/common
https://www.npmjs.com/package/@cucumber/language-server

Language server for Cucumber.

`cucumber-language-server` can be installed via `npm`:
```sh
npm install -g @cucumber/language-server
```
    ]],
    default_config = {
      root_dir = [[util.find_git_ancestor]],
    },
  },
}
-- vim:et ts=2 sw=2
