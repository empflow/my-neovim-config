vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- open netrw

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- ctrl + d half screen jumping
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- ctrl + u half screen jumping
vim.keymap.set("n", "n", "nzzzv")       -- keeps cursor in the middle while searching
vim.keymap.set("n", "N", "Nzzzv")       -- same as above

vim.keymap.set("x", "<leader>p", [["_dP]]) -- prevent losing paste buffer when highlighing a word and replacing it with p
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- copy into system clipboard (use <leader>yy)
vim.keymap.set("n", "<leader>Y", [["+Y]])        -- same as above (use <leader>Y, copies everything from the currect cursor position till the end of the line)

-- greatest remap ever
vim.keymap.set({ "n", "v" }, "d", [["_d]])   -- use d to delete without saving anything to buffer
vim.keymap.set({ "n", "v" }, "<leader>d", "d") -- use <leader>d to delete and save deleted content to buffer

vim.keymap.set("n", "Q", "<nop>")            -- prime says this is useful
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replace the currect word with something (globally)
vim.keymap.set("n", "<leader>re", [[:%s/string_to_replace/new_string/gc]])

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/empflow/packer.lua<CR>"); -- go to packer.lua
vim.keymap.set("n", "<leader>n", [[:NvimTreeToggle<CR>]]) -- toggle NvimTree

-- switch windows
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
