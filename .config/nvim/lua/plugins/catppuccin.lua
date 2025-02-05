return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup(
                {
                    flavour = "mocha",
                    transparent_background = false,

                    integrations = {
                        telescope = {
                            enabled = true,
                            style = "nvchad"
                        },
                        neotree = true,
                        barbar = true,
                        which_key = true
                    }
                }
            )
            vim.cmd.colorscheme "catppuccin"
        end
    }
}
