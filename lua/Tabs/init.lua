local theme = vim.o
theme.termguicolors = true

require('bufferline').setup{
		highlights = {
		buffer_selected = { italic = false },
		diagnostic_selected = { italic = false },
		hint_selected = { italic = false },
		pick_selected = { italic = false },
		pick_visible = { italic = false },
		pick = { italic = false },
	}
}

diagnostics_indicator = function(count, level, diagnostics_dict, context)
  local icon = level:match("error") and " " or " "
  return " " .. icon .. count
end
