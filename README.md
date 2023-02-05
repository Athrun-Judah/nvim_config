# my-nvim-config

第一次折腾nvim  

平台是win11+wsl2（Ubuntu22.04tls）  

nvim（0.7.0以上)  

需要`node`环境  

packer.nvim下载地址`git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`  

treesitter需要安装`cc`,`gcc`,`clang`,`zig`等  (应该安装其一就可以)

sumneko_lua需要安装`unzip`  

telescope.nvim快速搜索依赖 `ripgrep` 和 `fd`  

安装ripgrep：  
`
~~sudo add-apt-repository ppa:x4121/ripgrep~~ 
`  

`
~~sudo apt-get update~~
`  

`
sudo apt install ripgrep
`  

安装fd:  
`
npm install -g fd-find
` 

前端需要安装prettier eslint     
`
npm install -D prettier eslint
`   

注：nvim-lsp-installer 会报 attempt to call method "setup_lsp" (a nil value)，要么注销掉init.lua中的 setup.lua，要么另寻他法。
