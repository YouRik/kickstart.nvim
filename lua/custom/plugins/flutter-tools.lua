return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  opts = {
    decorations = {
      statusline = {
        -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
        -- this will show the current version of the flutter app from the pubspec.yaml file
        app_version = false,
        -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
        -- this will show the currently running device if an application was started with a specific
        -- device
        device = false,
        -- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
        -- this will show the currently selected project configuration
        project_config = false,
      },
    },
    debugger = { -- integrate with nvim dap + install dart code debugger
      enabled = true,
      -- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
      -- see |:help dap.set_exception_breakpoints()| for more info
      -- exception_breakpoints = {},
      -- Whether to call toString() on objects in debug views like hovers and the
      -- variables list.
      -- Invoking toString() has a performance cost and may introduce side-effects,
      -- although users may expected this functionality. null is treated like false.
      evaluate_to_string_in_debug_views = true,
      register_configurations = function(paths)
        -- require('dap').configurations.dart = {
        --put here config that you would find in .vscode/launch.json
        -- }
        -- If you want to load .vscode launch.json automatically run the following:
        require('dap.ext.vscode').load_launchjs()
      end,
    },
    widget_guides = {
      enabled = true,
    },
    closing_tags = {
      -- highlight = 'ErrorMsg', -- highlight for the closing tag
      prefix = '>', -- character to use for close tag e.g. > Widget
      priority = 10, -- priority of virtual text in current line
      -- consider to configure this when there is a possibility of multiple virtual text items in one line
      -- see `priority` option in |:help nvim_buf_set_extmark| for more info
      enabled = true, -- set to false to disable
    },
    dev_log = {
      enabled = false,
      filter = nil, -- optional callback to filter the log
      -- takes a log_line as string argument; returns a boolean or nil;
      -- the log_line is only added to the output if the function returns true
      notify_errors = true, -- if there is an error whilst running then notify the user
      open_cmd = '15split', -- command to use to open the log buffer
      focus_on_open = false, -- focus on the newly opened log window
    },
    dev_tools = {
      autostart = true, -- autostart devtools server if not detected
      auto_open_browser = false, -- Automatically opens devtools in the browser
    },
    outline = {
      open_cmd = '30vnew', -- command to use to open the outline buffer
      auto_open = false, -- if true this will open the outline automatically when it is first populated
    },
    lsp = {
      color = { -- show the derived colours for dart variables
        enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
        background = true, -- highlight the background
        background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
        foreground = true, -- highlight the foreground
        virtual_text = true, -- show the highlight using virtual text
        virtual_text_str = '■', -- the virtual text character to highlight
      },
      -- see the link below for details on each option:
      -- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
      settings = {
        showTodos = true,
        completeFunctionCalls = true,
        renameFilesWithClasses = 'prompt', -- "always"
        enableSnippets = true,
        updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
      },
    },
  },
  config = function(_, opts)
    require('flutter-tools').setup(opts)
    vim.keymap.set('n', '<leader>fq', '<cmd>FlutterQuit<CR>', { noremap = true, silent = true, desc = '[F]lutter [Q]uit the app' })
    vim.keymap.set('n', '<leader>fr', '<cmd>FlutterRun<CR>', { noremap = true, silent = true, desc = '[F]lutter [R]un the app' })
    vim.keymap.set('n', '<leader>fd', '<cmd>FlutterDevices<CR>', { noremap = true, silent = true, desc = '[F]lutter [D]evices' })
    vim.keymap.set('n', '<leader>fs', '<cmd>FlutterRestart<CR>', { noremap = true, silent = true, desc = '[F]lutter re[S]tart' })
    vim.keymap.set('n', '<leader>fh', '<cmd>FlutterReload<CR>', { noremap = true, silent = true, desc = '[F]lutter [H]ot reload' })
    vim.keymap.set('n', '<leader>fo', '<cmd>FlutterOutlineToggle<CR>', { noremap = true, silent = true, desc = '[F]lutter [O]utline' })
    vim.keymap.set('n', '<leader>ft', '<cmd>FlutterDevTools<CR>', { noremap = true, silent = true, desc = '[F]lutter Dev[T]ools' })
    vim.keymap.set('n', '<leader>fu', '<cmd>FlutterCopyProfilerUrl<CR>', { noremap = true, silent = true, desc = '[F]lutter copy profile [U]RL' })
    -- vim.keymap.set('n', '<leader>fl', '<cmd>FlutterLogToggle<CR>', { noremap = true, silent = true, desc = '[F]lutter [L]og' })
    -- vim.keymap.set('n', '<leader>fc', '<cmd>FlutterLogClear<CR>', { noremap = true, silent = true, desc = '[F]lutter [C]lear log' })
    vim.keymap.set('n', '<leader>fe', require('telescope').extensions.flutter.commands, { noremap = true, silent = true, desc = '[F]lutter T[E]lescope' })
  end,
}
