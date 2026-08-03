local M = {}

M.capabilities = require("blink.cmp").get_lsp_capabilities()

M.on_attach = function(_, bufnr)
	local map = function(mode, lhs, rhs, desc)
		vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
	end

	local fzf = require("fzf-lua")

	map("n", "gd", fzf.lsp_definitions, "Go to Definition")
	map("n", "gD", fzf.lsp_declarations, "Go to Declaration")
	map("n", "gr", fzf.lsp_references, "References")
	map("n", "gi", fzf.lsp_implementations, "Implementations")
	map("n", "gt", fzf.lsp_typedefs, "Type Definition")
	map("n", "K", vim.lsp.buf.hover, "Hover Docs")
	map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
	map("n", "<leader>ca", fzf.lsp_code_actions, "Code Actions")
	map("n", "<leader>ds", fzf.lsp_document_symbols, "Document Symbols")
	map("n", "<leader>ws", fzf.lsp_workspace_symbols, "Workspace Symbols")

	-- Diagnostics
	map("n", "<leader>d", vim.diagnostic.open_float, "Line Diagnostics")
	map("n", "<leader>D", fzf.diagnostics_document, "Document Diagnostics")
end

M.lazy_path = function(plugin)
	return vim.fn.stdpath("data") .. "/lazy/" .. plugin
end

M.dotnet_root = function(bufnr, on_dir, project_extension)
	local root = vim.fs.root(bufnr, function(name)
		local lower = name:lower()
		return lower:match("%.sln$") ~= nil or lower:match("%.slnf$") ~= nil or lower:match("%.slnx$") ~= nil
	end)

	root = root or vim.fs.root(bufnr, function(name)
		return name:lower():match("%." .. project_extension .. "$") ~= nil
	end)

	root = root or vim.fs.root(bufnr, function(name)
		local lower = name:lower()
		return lower == "web.config"
			or lower == "directory.build.props"
			or lower == "directory.build.targets"
	end)

	root = root or vim.fs.root(bufnr, ".git")
	if root then
		on_dir(root)
	end
end

return M
