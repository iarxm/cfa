-- # ds.analysis
-- nvim preview companion
-- update filename for specific buffer, if the file was renamed by another script outside of nvim.. Ie in nnn

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

