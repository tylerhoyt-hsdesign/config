local M = {}

M.capabilitites = require("blink.cmp").get_lsp_capabilities()

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

return M
