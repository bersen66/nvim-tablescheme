local api = vim.api

api.nvim_create_user_command(
    "TableScheme",
    function ()
        print("Hello, world!")
    end,
    {
        nargs = "?",
        desc = "Everything is Ok"
    }
)
