-- Filetypes used by classic ASP.NET Web Forms projects are not detected by
-- Neovim. Treat markup and service endpoints as HTML/XML so they still get
-- syntax highlighting, completion, tag matching, and formatting.
vim.filetype.add({
	extension = {
		asax = "html",
		ascx = "html",
		ashx = "html",
		asmx = "xml",
		aspx = "html",
		master = "html",
		svc = "xml",
		vbhtml = "html",
	},
	filename = {
		["Web.config"] = "xml",
		["web.config"] = "xml",
	},
})
