local function floaterm_exists(name)
  return vim.fn["floaterm#terminal#get_bufnr"](name) ~= -1
end

local function ensure_agent_terminal_normal_mode(bufnr)
  if bufnr == -1 then
    return
  end

  local group_name = "AgentTerminalNormalMode" .. bufnr
  local augroup = vim.api.nvim_create_augroup(group_name, { clear = true })
  vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
    group = augroup,
    buffer = bufnr,
    callback = function()
      vim.schedule(function()
        if vim.api.nvim_buf_is_valid(bufnr) then
          vim.cmd("stopinsert")
        end
      end)
    end,
  })
end

local function toggle_agent_terminal()
  if floaterm_exists("agent") then
    vim.cmd("FloatermToggle agent")
    ensure_agent_terminal_normal_mode(vim.fn["floaterm#terminal#get_bufnr"]("agent"))
    return
  end

  vim.cmd(
    "FloatermNew --name="
    .. "agent"
    .. " --wintype=vsplit --position=botright --width=0.38 --autoinsert=0"
  )
  ensure_agent_terminal_normal_mode(vim.fn["floaterm#terminal#get_bufnr"]("agent"))
end

return {
  'voldikss/vim-floaterm',
  keys = {
    { 'lg', '<cmd>FloatermNew --width=0.9 --height=0.9 lazygit<CR>' },
    { 'ag', toggle_agent_terminal },
  },
}
