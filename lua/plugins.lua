local packer = require("packer")
packer.startup({
  function(use)
    -- Packer 可以管理自己本身
    use('wbthomason/packer.nvim')
    -- 你的插件列表...
    --------------------- colorschemes --------------------
    -- tokyonight
    use("folke/tokyonight.nvim")

    -- onedark
    use("ful1e5/onedark.nvim")

    -- nightfox
    use("EdenEast/nightfox.nvim")

    -- mhartington /oceanic-next
    use("mhartington/oceanic-next")

    -- glepnir/zephyr-nvim
    use({
        'glepnir/zephyr-nvim',
        requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
    })

    -- catppuccin/nvim
    use("catppuccin/nvim")

    -------------------------- plugins -------------------------------------------
    -- nvim-tree
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    -- bufferline
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
    -- lualine
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
    -- telescope
    use({ 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } })
    -- telescope extensions
    use("LinArcX/telescope-env.nvim")
    -- dashboard-nvim
    use("glepnir/dashboard-nvim")
    -- project
    use("ahmedkhalf/project.nvim")
    -- treesitter
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      requires = {
        { "p00f/nvim-ts-rainbow" },
        { "JoosepAlviste/nvim-ts-context-commentstring" },
        { "windwp/nvim-ts-autotag" },
        { "nvim-treesitter/nvim-treesitter-refactor" },
        { "nvim-treesitter/nvim-treesitter-textobjects" },
      },
    })
    --------------------- LSP --------------------
    -- use("williamboman/nvim-lsp-installer") //作者不再维护，放弃使用
    -- use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })
    
    --------------------- Mason.nvim --------------------
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })

    -- Lspconfig
    use({ "neovim/nvim-lspconfig" })

    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    use("windwp/nvim-ts-autotag")
    -- snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")

    -- ui (新增)
    use("onsails/lspkind-nvim")
    use("tami5/lspsaga.nvim")
    -- indent-blankline
    use("lukas-reineke/indent-blankline.nvim")
    --代码格式化
    --use("mhartington/formatter.nvim")
    use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })

    -- JSON 增强
    use("b0o/schemastore.nvim")

    --TypeScript增强
    use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
    
    --Comment
    use{"numToStr/Comment.nvim",
      config = function ()
        require('Comment').setup()
      end
    }
  
    --括号补全
    use("windwp/nvim-autopairs")

    -- git
    use({ "lewis6991/gitsigns.nvim" })
    -- sniprun
    use { 'michaelb/sniprun', run = 'bash ./install.sh'}
    
    -- rust增强
    use("simrat39/rust-tools.nvim")

    -- vimspector
    use("puremourning/vimspector")

    -- nvim-dap 
    use("mfussenegger/nvim-dap")
    use("theHamsta/nvim-dap-virtual-text")
    use("rcarriga/nvim-dap-ui")

    use({"mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"}})
    use({
      "microsoft/vscode-js-debug",
      opt = true,
      run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out" 
    })
  end,
  config = {
    -- 并发数限制
    max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "single" })
      end,
    },
  },

})

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
