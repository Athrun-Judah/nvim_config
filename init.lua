--基础配置
require("basic")

-- 快捷键映射
require("keybindings")

-- Packer 插件管理
require("plugins")

-- 主题设置
require("colorscheme")

-- 插件配置
require("plugin-config.nvim-tree")

--bufferline 页面切换或关闭
require("plugin-config.bufferline")

--底部信息显示栏
require("plugin-config.lualine")

--模糊搜索文件
require("plugin-config.telescope")

--dashboard
require("plugin-config.dashboard")
--project
require("plugin-config.project")

--语法高亮
require("plugin-config.nvim-treesitter")

-- 内置LSP
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
require("plugin-config.indent-blankline")

--格式化
--require("lsp.formatter")
require("lsp.null-ls")

--括号自动补全
require("plugin-config.nvim-autopairs")

-- 快速注释代码
require("plugin-config.comment")
