local util = require("lsp.util")

local function get_typescript_lib_path()
	local ts_server = vim.fn.exepath("typescript-language-server")
	if ts_server ~= "" then
		-- Resolve symlink and navigate to the typescript lib
		local real = vim.uv.fs_realpath(ts_server) or ts_server
		-- typical path: .../node_modules/.bin/typescript-language-server -> go up to node_modules
		local node_modules = real:match("^(.*node_modules)/")
		if node_modules then
			return node_modules .. "/typescript/lib/"
		end
	end
	-- Fallback: find typescript relative to global npm prefix
	local npm_prefix = vim.fn.system("npm prefix -g"):gsub("%s+$", "")
	return npm_prefix .. "/lib/node_modules/typescript/lib/"
end

return {
	cmd = { "astro-ls", "--stdio" },
	filetypes = { "astro" },
	root_markers = { "package.json", "astro.config.mjs", ".git" },
	capabilities = util.capabilities,
	on_attach = util.on_attach,
	init_options = {
		typescript = {
			tsdk = get_typescript_lib_path(),
		},
	},
}
