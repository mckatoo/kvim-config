---@diagnostic disable: undefined-global

function FormatFunction()
	local mode = vim.api.nvim_get_mode().mode
	local opts = {
		async = true
	}
	if (mode == "v") then
		opts = {
			async = true,
			range = {
				["start"] = vim.api.nvim_buf_get_mark(0, "<"),
				["end"] = vim.api.nvim_buf_get_mark(0, ">"),
			}
		}
	end

	vim.lsp.buf.format(opts)
end
