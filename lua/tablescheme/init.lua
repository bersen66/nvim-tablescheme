local tablescheme = {}
--
-- local function show_valentine()
--     vim.api.nvim_command('vnew')
--
--     local buf = vim.api.nvim_create_buf(false, true)
--     vim.api.nvim_set_current_buf(buf)
--
--     local lines = {
--         "Первая строка текста",
--         "Вторая строка текста",
--         "Третья строка текста"
--     }
--
--     vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
--
--     vim.api.nvim_command('setlocal readonly')
--     vim.api.nvim_command('wincmd x')
-- end
--
-- function tablescheme.setup(opts)
--     vim.api.nvim_create_user_command("TableScheme", show_valentine, {})
-- end
--
--
--
local Window = require('plenary.window')

local function open_window()
  -- Создаем новое окно
  local buf = vim.api.nvim_create_buf(false, true) -- Создаем новый буфер
  local width = vim.o.columns
  local height = vim.o.lines

  -- Определяем размеры и позицию окна
  local win_height = math.ceil(height * 0.8 - 4)
  local win_width = math.ceil(width * 0.8)
  local row = math.ceil((height - win_height) / 2 - 1)
  local col = math.ceil((width - win_width) / 2)

  -- Настройки окна
  local opts = {
    style = "minimal",
    relative = "editor",
    width = win_width,
    height = win_height,
    row = row,
    col = col
  }

  -- Открываем окно
  local win = vim.api.nvim_open_win(buf, true, opts)

  -- Заполняем окно содержимым
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, {
    "Это окно, созданное с использованием plenary.nvim",
    "Вы можете добавить сюда любой текст или виджеты по вашему усмотрению."
  })

  -- Установите autocmd для закрытия окна при нажатии клавиши 'q'
  vim.api.nvim_buf_set_keymap(buf, 'n', 'q', '<cmd>bd!<CR>', { noremap = true, silent = true })
end

function tablescheme.setup(opts)
    vim.api.nvim_create_user_command("TableScheme", open_window, {})
end

return tablescheme
