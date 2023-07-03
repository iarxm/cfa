-- Autoloaded functions at runtime via lua require('gen') in vimrc
-- If wanting to selectively load functions or scripts, don't call the lua require in vimrc and instead call lua require as a command after nvim startup..

-- ##############################################
-- ds.analysis: nvim preview companion
-- 	- update filename for specific buffer, if the file was renamed by another script outside of nvim.. Ie in nnn
function updateBufferFilename(oldFilename, newFilename)
    -- Check if the old filename is open in a buffer
    local bufNr = vim.fn.bufnr(oldFilename)
    if bufNr == -1 then
        -- The old filename is not open in any buffer
        return
    end

    -- Switch to the buffer containing the old filename
    vim.cmd(bufNr .. 'buffer')

    -- Use the :file command to update the buffer with the new filename
    vim.cmd('file ' .. newFilename)
end

