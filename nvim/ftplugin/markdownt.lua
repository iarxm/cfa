-- vimscript to lua conversion in progress

--vim.opt.concellevel = "2"
--vim.opt.foldlevel   = "0"
--vim.cmd.source "$VIMDIR/syntax/markdown.vim"


function CustomFormat(line)

    local lineLength = #line
    local width = vim.api.nvim_get_width(0)
    local newLength = width - 5

    if lineLength > 40 and lineLength > newLength then
        return line:sub(1, newLength)
    elseif lineLength < newLength then
        return string.format( '%-' .. newLength .. 's', line)
    elseif newLength < 40 then
        return string.format( '%-40s', line)
    else
        return line
    end
end


function PadSeps()
    --vim.cmd([['silent! %s/\(.*::::.*\)/\=CustomFormat(submatch(0))/']])
    vim.cmd([[silent! %s/\(.*::::.*\)/\=luaeval('CustomFormat(_A)', submatch(0))/]])
end


