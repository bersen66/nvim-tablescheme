local tablescheme = {}


local function show_valentine()
    vim.api.nvim_command('vnew')

    local buf = vim.api.nvim_create_buf(false, true)
    local win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_set_buf(win, buf)

    local lines = {
        "Первая строка текста",
        "Вторая строка текста",
        "Третья строка текста"
    }

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

    vim.api.nvim_command('setlocal readonly')
    vim.api.nvim_command('wincmd x')
end

function tablescheme.setup(opts)
    vim.api.nvim_create_user_command("TableScheme", show_valentine, {})
end

return tablescheme
