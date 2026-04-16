require("config.options")
require("config.remaps")

-- Turn on new UI
require("vim._core.ui2").enable({
	enable = true,
})

-- Auto-load all plugins
for name, type in vim.fs.dir(vim.fn.stdpath("config") .. "/lua/plugins") do
	if type == "file" and name:match("%.lua$") then
		require("plugins." .. name:gsub("%.lua$", ""))
	end
end

-- Add config root to lua path for lsp configs
package.path = vim.fn.stdpath("config") .. "/?.lua;" .. package.path

-- Load and register LSP configs
for name, type in vim.fs.dir(vim.fn.stdpath("config") .. "/lsp") do
	if type == "file" and name:match("%.lua$") and name ~= "util.lua" then
		local server_name = name:gsub("%.lua$", "")
		local ok, config = pcall(require, "lsp." .. server_name)
		if ok and config then
			vim.lsp.config[server_name] = config
		end
	end
end

-- LSP Servers
vim.lsp.enable({
	"lua_ls",
	"ts_ls",
	"html",
	"css",
	"astro",
	"tailwindcss",
	"eslint",
})
