vim.cmd [[packadd packer.nvim]]

vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]] 

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- lf
    use 'ptzz/lf.vim'
    use 'voldikss/vim-floaterm'
    
    use 'nvim-lua/popup.nvim'
    
    -- theme
    use 'projekt0n/github-nvim-theme'

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- prettier
    use {
        'prettier/vim-prettier',
        run = 'yarn install --frozen-lockfile --production'
    }

    -- nvim LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }

    -- line
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use 'p00f/nvim-ts-rainbow'

    use 'wellle/targets.vim'

    use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use 'tpope/vim-fugitive'

    use 'kyazdani42/nvim-web-devicons'

    use 'fatih/vim-go'
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
