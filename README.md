~/.config/nvim/
├── init.lua            # Main entry file
├── lua/
│   ├── plugins.lua     # Plugin configuration
│   ├── keymaps.lua     # Key mappings
│   ├── options.lua     # Basic options
│   ├── lsp/            # Language Server Protocol config
│   │   ├── init.lua    # LSP setup
│   │   ├── python.lua  # Python-specific LSP setup
│   │   └── ts.lua      # TypeScript-specific LSP setup
│   └── utils.lua       # Utility functions

-- init.lua
-- Load core configurations
require('core.options')
require('core.keymaps')
require('core.autocmds')
require('core.lazy') -- Plugin manager setup

-- Setup LSP
require('')

-- Plugin configurations
-- load plugins here
