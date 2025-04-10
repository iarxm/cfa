local mp = require "mp"
local msg = require "mp.msg"
local utils = require "mp.utils"

package.path = mp.command_native({"expand-path", "~~/scripts/a-modules/?.lua;"})..package.path
local input = require "user-input-module"


local function rename(text, error)
    if not text then return msg.warn(error) end

    local filepath = mp.get_property("path")
    if filepath == nil then return end

    local directory, filename = utils.split_path(filepath)
    local name, extension = filename:match("(.*)%.([^%./]+)$")
    local newfilepath = directory..text

    msg.info( string.format("renaming '%s.%s' to '%s'", name, extension, text) )
    local success, error = os.rename(filepath, newfilepath)
    if not success then msg.error(error) end

    -- adding new path to playlist; restarting file with correct path
    mp.commandv("loadfile", newfilepath, "append")
    mp.commandv("playlist-move", mp.get_property_number("playlist-count", 2) - 1, mp.get_property_number("playlist-pos", 1) + 1)
    mp.commandv("playlist-remove", "current")
end


mp.register_event("end-file", function()
    --if file closes while renaming then cancel
    input.cancel_user_input()
end)


mp.add_key_binding("r", "rename-file",
    function()
    
        filepath = mp.get_property('path')
        directory, filename = utils.split_path(filepath)
        input.cancel_user_input()

        input.get_user_input(rename, {
            text = "Enter new filename:",
            default_input = filename,
            replace = false,
            cursor_pos = filename:find("%.%w+$")
    })
end)

-- mp.add_key_binding("SHIFT+F2", "clear-input", function ()
--     input.get_user_input(rename,{
--         text = "Enter new filename:",
--         default_input = "filename",
--         replace = true
--     })
    
-- end)
