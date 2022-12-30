local status, comment = pcall(require, "nvim_comment")
if (not status) then return end

comment.setup({
  marker_padding = true,
  create_mappings = true,
  line_mapping = '?',
  operator_mapping = "gc",
  comment_chunk_text_object = "?",
})
