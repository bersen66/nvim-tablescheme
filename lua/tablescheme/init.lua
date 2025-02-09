local tablescheme = {}

local function print_hello()
    print("Hello, world!")
end


function tablescheme.setup(opts)
    vim.api.nvim_create_user_command("TableScheme", print_hello(), {})
end

return tablescheme
