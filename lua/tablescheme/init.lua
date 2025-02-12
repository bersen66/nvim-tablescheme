local tablescheme = {}

local function show_valentine()
    vim.api.nvim_command('vnew')
end


function tablescheme.setup(opts)
    vim.api.nvim_create_user_command("TableScheme", show_valentine, {})
end

return tablescheme
