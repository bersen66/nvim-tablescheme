local function print_hello()
    print("Hello, world!")
end

vim.api.nvim_create_user_command("TableScheme", print_hello(), {})
