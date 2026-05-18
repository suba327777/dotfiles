return {
  'nvim-telescope/telescope.nvim',
  event = "VeryLazy",
  dependencies = {
    'nvim-lua/plenary.nvim',
    'kdheepak/lazygit.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
  },
  keys = {
    { ';f', function()
      require('telescope.builtin').find_files({ no_ignore = false, hidden = true })
    end },
    { ';r', function()
      require('telescope.builtin').live_grep({
        additional_args = function() return { "--fixed-strings" } end,
      })
    end },
    { '\\\\', function() require('telescope.builtin').buffers() end },
    { ';t', function() require('telescope.builtin').help_tags() end },
    { ';;', function() require('telescope.builtin').resume() end },
    { ';e', function() require('telescope.builtin').diagnostics() end },
    { 'sf', function()
      require('telescope').extensions.file_browser.file_browser({
        path = "%:p:h",
        cwd = vim.fn.expand('%:p:h'),
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        previewer = false,
        initial_mode = "normal",
        layout_config = { height = 40 },
      })
    end },
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    local function focus_telescope()
      for _, win in ipairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)
        if vim.bo[buf].filetype == "TelescopePrompt" then
          vim.api.nvim_set_current_win(win)
          break
        end
      end
    end

    local function with_telescope_focus_async(action)
      return function(prompt_bufnr)
        local orig_input = vim.ui.input
        vim.ui.input = function(opts, callback)
          orig_input(opts, function(value)
            callback(value)
            vim.ui.input = orig_input
            vim.schedule(focus_telescope)
          end)
        end
        action(prompt_bufnr)
      end
    end

    telescope.setup({
      defaults = {
        mappings = { n = { ["q"] = actions.close } },
      },
      extensions = {
        file_browser = {
          theme = "dropdown",
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              ["<C-w>"] = function() vim.cmd('normal vbd') end,
            },
            ["n"] = {
              ["N"] = function(prompt_bufnr)
                local fb_actions = require("telescope").extensions.file_browser.actions
                with_telescope_focus_async(fb_actions.create)(prompt_bufnr)
              end,
              ["d"] = function(prompt_bufnr)
                local fb_actions = require("telescope").extensions.file_browser.actions
                with_telescope_focus_async(fb_actions.remove)(prompt_bufnr)
              end,
              ["h"] = function(prompt_bufnr)
                require("telescope").extensions.file_browser.actions.goto_parent_dir(prompt_bufnr)
              end,
              ["/"] = function() vim.cmd('startinsert') end,
            },
          },
        },
      },
    })

    telescope.load_extension("file_browser")
  end,
}
