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

function Trim()
	local save = vim.fn.winsaveview()
	vim.cmd("keeppatterns %s/\\s\\+$\\|\\r$//e")
	vim.fn.winrestview(save)
end

function Paste_and_trim()
	-- Perform the default paste action
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('p', true, false, true), 'n', false)
	-- Call the trim function
	vim.schedule(function()
		Trim()
	end)
end
