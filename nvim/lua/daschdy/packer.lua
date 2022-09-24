vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    -- PluginManager itself    
    use "wbthomason/packer.nvim"
    
    -- Themes
    use 'Mofiqul/dracula.nvim'  

    -- Editing
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    use ({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    
    -- Search
    use "nvim-lua/plenary.nvim" -- required for Telescope 
    use {
        "nvim-telescope/telescope.nvim", tag = '0.1.0'
    }
    use "kyazdani42/nvim-tree.lua"

    -- Status Line
    use {
        "nvim-lualine/lualine.nvim",
        requires = {
                    "kyazdani42/nvim-web-devicons",
                    opt = true 
                    }
    }

    -- Terminal
    use {
        "akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
        require("toggleterm").setup()
        end
    }
    
    -- Alpha/ Welcome Screen
    use {
        'goolord/alpha-nvim',
        config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }

end)
