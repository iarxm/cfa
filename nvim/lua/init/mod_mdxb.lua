
function OpenMarkdownPreview()
  if s.markdown_job_id and s.markdown_job_id > 0 then
    vim.fn.jobstop(s.markdown_job_id)
    s.markdown_job_id = nil
  end
  local available_port = vim.fn.system(
    "lsof -s tcp:listen -i :40500-40800 | awk -F ' *|:' '{ print $10 }' | sort -n | tail -n1"
  ) + 1
  if available_port == 1 then available_port = 40500 end
  s.markdown_job_id = vim.fn.jobstart('grip ' .. vim.fn.shellescape(vim.fn.expand('%:p')) .. ' :' .. available_port)
  if s.markdown_job_id <= 0 then return end
  vim.fn.system('open http://localhost:' .. available_port)
end

