local M        = {}
local cmd      = vim.api.nvim_command
-- dirs
local hr       = "$HOME/da"
local ha       = hr .. '/a'
local hb       = hr .. '/aa'
local hm_ml    = hr .. '/cm/yml'
-- ha
local paa      = ha .. '/aa.md'
local pab      = ha .. '/ab.md'
local pax      = ha .. '/ax.md'
local pay      = ha .. '/ay.md'
-- hb
local m_ba     = hb .. '/cma.md'
local m_bb     = hb .. '/cmb.md'
local m_jma    = hb .. '/aja.md'
local m_jmb    = hb .. '/ajb.md'
local m_jmc    = hb .. '/ajc.md'
local m_aua    = hb .. '/mau.md'
local m_cra    = hb .. '/mcr.md'
local m_yra    = hb .. '/dxy.md'
local m_qra    = hb .. '/dyq.md'
local m_msux   = hb .. '/vmsux.md'
local m_msuy   = hb .. '/vmsuy.md'
-- notes
local ua       = hb .. '/ua.md'
local ub       = hb .. '/ub.md'
local uc       = hb .. '/uc.md'
local ux       = hb .. '/ux.md'
local uy       = hb .. '/uy.md'
local uo       = hb .. '/uo.md'
-- oo
local oa       = hb .. '/oa.md'
local ob       = hb .. '/ob.md'
local oc       = hb .. '/oc.md'
local od       = hb .. '/od.md'
local oi       = hb .. '/oi.md'
local oj       = hb .. '/oj.md'

local bufs_oa = {
    oi,
    oj,
    oa,
    ob,
    oc,
    uc,
}

local bufs_ox = {
    -- metas
    'aa/oxbb.md',
    'aa/oxbf.md',
    'cm/yml/oxii.md',
    'aj/aax/aoxi.md',
    -- dx/dn/ds
    'ds/aoa/oix.md',
    'ds/aoa/oax.md',
    'ds/aoa/ox-asf.md',
    'ds/aoa/ox-dev.md',
    'dx/d-aax/aoix.md',
    -- academ
    'xx/mua/aoxuu.md',
    -- tk
    'xx/tpb/aoxi.md',
    'xx/tka/aoxi.md',
    'xx/tng/aoxi.md',
}

local bufs_oy = {
    -- used rarely
    'xx/dmm/aoix.md',
    'dx/swi/oix.md',
}

local bufs_ds = {
    -- https://chatgpt.com/c/6798fbd9-19b8-8006-abf6-43aae9e184ce
    -- file path collector ^
}

local buff      = function(filename) cmd('silent badd ' .. filename) end
local edit      = function(filename) cmd('edit ' .. filename) end
local tnew      = function(filename) cmd('silent tabnew ' .. filename) end
local svrt      = function(filename) cmd('silent vsplit ' .. filename) end

local enva      = function() cmd('cd' .. hr) end
local envb      = function() cmd('tabfirst'); cmd('quit') end
local envx      = function() cmd('cd' .. hr) end

local z_mdx     = function() cmd('lua require("markx").write_mode_x()') end
local z_zen     = function() cmd('silent ZenMode') end
--local z_tru      = function() cmd('silent echom ""') end
--local z_tru      = function() cmd('silent TZMinimalist') end
--local z_tru      = function() cmd('TZNarrow') end
local z_mut     = function() cmd('silent MuttonToggle') end
local z_dfm     = function() cmd('silent LiteDFMToggle') end
local z_goy     = function() cmd('silent Goyo') end
local z_neo     = function() cmd('Neotree') end

local t_tlist_all  = function() cmd('silent tabdo Tlist') end
local t_tagbar_all = function() cmd('silent tabdo Tagbar') end
local t_x_all      = function() t_tagbar_all() end

local bufs_load_y = function(buf_input)
    for _, file in ipairs(buf_input) do
        buff(file)
    end
end

local bufs_load_x = function(buf_input)
    for _, file in ipairs(buf_input) do
        buff(hr .. "/" .. file)
    end
end

M.a = function()
    envx()
    tnew(paa)
    tnew(pab)
    svrt(paa)
    tnew(pab)
    svrt(pab)
    envb()
    --z_mdx()
end

M.pb = function()
    envx()
    tnew(pax)
    tnew(pay)
    svrt(pax)
    tnew(pay)
    svrt(pay)
    envb()
    --z_mdx()
end

M.ma = function()
    envx()
    tnew(m_jma)
    tnew(m_jmb)
    svrt(m_jma)
    tnew(m_bb)
    svrt(m_msux)
    envb()
    --cmd('TagbarClose')
    z_mdx()
    --z_zen()
end

M.mj = function()
    enva()
    tnew(m_jma)
    --z_mdx()
    tnew(m_msux)
    --z_mdx()
    envb()
end

M.mb = function()
    enva()
    svrt(m_aua)
    tnew(m_ba)
    svrt(m_bb)
    svrt(m_bb)
    tnew()
    tnew(m_qra)
    tnew(m_qra)
    tnew(m_yra)
    svrt(m_yra)
    tnew()
    tnew(m_ba)
    svrt(m_ba)
    tnew(m_bb)
    svrt(m_bb)
    tnew()
    envb()
end

M.m_future = function()
    enva()
    tnew(m_qra)
    svrt(m_qra)
    tnew(m_yra)
    svrt(m_yra)
    tnew()
    tnew(m_bb)
    svrt(m_bb)
    tnew(m_ba)
    svrt(m_ba)
    tnew()
end

M.m_future_qr = function()
    enva()
    tnew(m_qra)
    svrt(m_qra)
    tnew(m_yra)
    svrt(m_yra)
    tnew()
    tnew(m_aua)
    svrt(m_aua)
    tnew()
end

M.ua = function() 
    -- universal notes buffer
    enva()
    edit(ua)
    --t_x_all()
end

M.ub = function()
    enva()
    edit(ub)
    --t_x_all()
end

M.uc = function()
    enva()
    edit(uc)
    --t_x_all()
end

local oa_x = function()
    bufs_load_y(bufs_oa)
    bufs_load_y(bufs_ox)
    tnew(oi)
    tnew(oi)
    svrt(oj)
    tnew(oa)
    --require('neowarrior').open_right() -- currently has a bug
    tnew(uc)
    --cmd('lua require("markx").write_mode_pad_right()')
end

M.oa = function()
    enva()
    oa_x()
    cmd('silent tabnext 1')
    cmd('silent quit')
    --cmd('tabdo lua require("markx").write_mode_x()')
    --cmd('tabdo wincmd 2l')
    --cmd('silent tabnext 1')
    --cmd('Neotree position=right')
end

M.ob = function()
    enva()
    oa_x()
    tnew(oc)
    svrt(od)
    envb()
end

local o_cx = function()
    tnew(oc)
    svrt(oc)
    tnew(od)
    svrt(od)
    tnew(oi)
    svrt(oi)
end

M.oc = function()
   enva()
   oc_x()
   envb()
end

local od_x = function()
    tnew(m_jma)
    tnew(ua)
end

M.oda = function()
    enva()
    od_x()
    oa_x()
    envb()
end

M.ml = function()
    cmd('cd' .. hm_ml)

    tnew('aa.md')
    z_mdx()
    --cmd('NeoWarriorOpen Left')

    tnew('ab.md')
    z_mdx()

    tnew('oi.md')
    z_mdx()
    --require('neowarrior').open_right()

    tnew('oa.md')
    svrt('oi.md')
    z_mdx()

    buff('oxtk.md')
    buff('ob.md')
    buff('README.md')
    buff('~/.config/mutt/muttrc')
    buff('~/.config/mutt/bind.muttrc')
    buff('~/.config/muttm/bind.mx.muttrc')
    --buff('~/.config/sieve/Open-Xchange')
    --buff('~/.local/bin/mlx/ml')
    --buff('ii.sc')
    --buff('ii.pn')
    envb()
    --z_mdx()
end

M.mlx = function()
    -- instant messaging / resources to share via WA
    cmd('cd' .. hm_ml)
    tnew('oy.md')
    envb()
end

M.test = function()
    enva()
    tnew('oy.md')
    envb()
end

return M
-- archive
--local env_z      = function() t_x_all(); cmd('tabfirst'); cmd('quit') end
--local newx      = function() cmd('tabnew ') end
--local shori     = function(filename) cmd('split ' .. filename) end
-- TODO: o#ox_p ox_ds oe oe_x
-- opt.number = true -- opt.numberwidth = 9
-- X.tbn = cmd('echom tabpagenr()')
