local M        = {}
local cmd      = vim.api.nvim_command
-- dirs
local hr       = "$HOME/da"
local ha       = 'a'
local hb       = 'aa'
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
local m_msux   = hb .. '/vmsux.md' --hb's
local m_msuy   = hb .. '/vmsuy.md' --hb's
-- oo
local oa       = hb .. '/oa.md' -- o's
local ob       = hb .. '/ob.md'
local oc       = hb .. '/oc.md'
local od       = hb .. '/od.md'
local oi       = hb .. '/oi.md'
local oj       = hb .. '/oj.md'
-- notes
local ua       = hb .. '/ua.md' -- u's
local ub       = hb .. '/ub.md'
local uc       = hb .. '/uc.md'
local ux       = hb .. '/ux.md'
local uy       = hb .. '/uy.md'
local uo       = hb .. '/uo.md'

local bufs_oa = {
    oi,
    oj,
    oa,
    ob,
    oc,
    uc,
}

local bufs_ox = {
    'oxpb.md',
    'oxtk.md',
    'oxeng.md',
    'oxds.md',
    'oxds-a.md',
    'oxds-dev.md',
    'oxds-asf.md',
    'oxdm.md',
    'oxdw.md',
    'oxdn.md',
    'oxuu.md',
    'oxmm.md',
    'oxbb.md',
    'oxbfn.md',
    'oxcm.md',
}

local bufs_ds = {
-- https://chatgpt.com/c/6798fbd9-19b8-8006-abf6-43aae9e184ce
    -- file path collector ^
}

local zen_mdx      = function() cmd('lua require("markx").write_mode_x()') end
local zen_zen      = function() cmd('silent ZenMode') end
--local zen_tru      = function() cmd('silent echom ""') end
--local zen_tru      = function() cmd('silent TZMinimalist') end
--local zen_tru      = function() cmd('TZNarrow') end
local zen_mut      = function() cmd('silent MuttonToggle') end
local zen_dfm      = function() cmd('silent LiteDFMToggle') end
local zen_goy      = function() cmd('silent Goyo') end
local zen_neo      = function() cmd('Neotree') end
local tlist_all = function() cmd('silent tabdo Tlist') end
local tagbarx   = function() cmd('silent tabdo Tagbar') end
local tagl_all  = function() tagbarx() end

local enva      = function() cmd('cd' .. hr) end -- X.tbn = cmd('echom tabpagenr()')
local envb      = function() cmd('tabfirst'); cmd('quit') end
local envx      = function() cmd('cd' .. hr) end -- opt.number = true -- opt.numberwidth = 9
local buf       = function(filename) cmd('silent badd ' .. filename) end
local edit      = function(filename) cmd('edit ' .. filename) end
local tnew      = function(filename) cmd('silent tabnew ' .. filename) end
local svrt      = function(filename) cmd('silent vsplit ' .. filename) end

-- archive?
local envz      = function() tagl_all(); cmd('tabfirst'); cmd('quit') end
local newx      = function() cmd('tabnew ') end
local shori     = function(filename) cmd('split ' .. filename) end


M.a = function()
  envx()
  tnew(paa)
  tnew(pab)
  svrt(paa)
  tnew(pab)
  svrt(pab)
  envb()
  --zen_mdx()
end

M.pb = function()
  envx()
  tnew(pax)
  tnew(pay)
  svrt(pax)
  tnew(pay)
  svrt(pay)
  envb()
  --zen_mdx()
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
  zen_mdx()
  --zen_zen()
end

M.mj = function()
  enva()
  tnew(m_jma)
  --zen_mdx()
  tnew(m_msux)
  --zen_mdx()
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


-- Note Taking (o#na)

M.ua = function() 
  enva()
  edit(ua)
  --tagl_all()
end

M.ub = function()
  enva()
  edit(ub)
  --tagl_all()
end

M.uc = function()
  enva()
  edit(uc)
  --tagl_all()
end


-- Actionable Panels

M.ox_bufs = function(buf_input)
    for _, file in ipairs(buf_input) do
        buf(ha .. "/" .. file)
    end
end

local bufs_load = function(buf_input)
    for _, file in ipairs(buf_input) do
        buf(file)
    end
end

M.oa_x = function() 
    tnew(oi)

    tnew(oi)
    svrt(oj)
    
    tnew(oa)
    --require('neowarrior').open_right() -- currently has a bug
    tnew(uc)
    cmd('lua require("markx").write_mode_pad_right()')
end

M.oa = function()
    enva()
    bufs_load(bufs_ox)
    bufs_load(bufs_oa)
    M.oa_x()
    cmd('silent tabnext 1')
    cmd('silent quit')
    cmd('tabdo lua require("markx").write_mode_x()')
    --cmd('tabdo wincmd 2l')
    cmd('silent tabnext 1')
    --cmd('Neotree position=right')
end


M.ob = function()
  enva()
  M.oa_x()
  tnew(oc)
  svrt(od)
  envb()
end

M.ocx = function()
  tnew(oc)
  svrt(oc)
  tnew(od)
  svrt(od)
  tnew(oi)
  svrt(oi)
end

M.oc = function()
 enva()
 M.ocx()
 envb()
end

M.odx = function()
  tnew(jm)
  tnew(ua)
end

M.oda = function()
  enva()
  M.odx()
  M.oa_x()
  envb()
end


M.ml = function()
    cmd('cd' .. hm_ml)

    tnew('aa.md')
    zen_mdx()
    --cmd('NeoWarriorOpen Left')

    tnew('ab.md')
    zen_mdx()

    tnew('oi.md')
    zen_mdx()
    --require('neowarrior').open_right()

    tnew('oa.md')
    svrt('oi.md')
    zen_mdx()

    buf('oxtk.md')
    buf('ob.md')
    buf('README.md') -- ConfigGS
    buf('~/.config/mutt/muttrc')
    buf('~/.config/mutt/bind.muttrc')
    buf('~/.config/muttm/bind.mx.muttrc')
  --buf('~/.config/sieve/Open-Xchange')
  --buf('~/.local/bin/mlx/ml')
  --buf('ii.sc')
  --buf('ii.pn')
  envb()
  --zen_mdx()
end

M.mlx = function()
    -- instant messaging / resources to share via whatsapp etc..
    cmd('cd' .. hm_ml)
    tnew('oy.md')
    envb()
end

return M

-- [x] change filename of this script to a 3 letter name
-- TODO: o#ox_p ox_ds oe oe_x
