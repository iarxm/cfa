local M        = {}
local X        = {}
local opt      = vim.opt
local cmd      = vim.api.nvim_command
local hr       = "$HOME/daa"
-- local ha       = hr .. '/a'
-- local hb       = hr .. '/a/aa'
local ha       = 'a'
local hb       = 'aa/aa'
local hm_ml    = hr .. '/cm/yml' -- mail
local paa      = ha .. '/aa.md' -- ha's
local pab      = ha .. '/ab.md'
local pax      = ha .. '/ax.md' -- ha's
local pay      = ha .. '/ay.md'
local mba      = ha .. '/ba.md'
local mbb      = ha .. '/bb.md'
local mjma     = ha .. '/jm.md'
local mjmb     = ha .. '/jmb.md'
local mjmc     = ha .. '/jmc.md'
local m_aua    = ha .. '/vaua.md'
local m_aub    = ha .. '/vaux.md'
local m_auc    = ha .. '/vauy.md'
local m_qra    = ha .. '/nzqr.md'
local m_yra    = ha .. '/nyr.md'
local oa       = ha .. '/oa.md' -- o's
local ob       = ha .. '/ob.md'
local oc       = ha .. '/oc.md'
local od       = ha .. '/od.md'
local oi       = ha .. '/oi.md'
local oj       = ha .. '/oj.md'
local ua       = ha .. '/ua.md' -- u's
local ub       = ha .. '/ub.md'
local uc       = ha .. '/uc.md'
local ux       = ha .. '/ux.md'
local uy       = ha .. '/uy.md'
local uo       = ha .. '/uo.md'
local msu      = ha .. '/v.msux.md' --hb's
local bufs_a = { -- bufs x
    oi,
    oj,
    oa,
    ob,
    oc,
    uc
}
local bufs = { -- bufs
    'oxpb.md',
    'oxtk.md',
    'oxeng.md',
    'oxds.md',
    'oxds.a.md',
    'oxds.dev.md',
    'oxds.asf.md',
    'oxdm.md',
    'oxdw.md',
    'oxdn.md',
    'oxuu.md',
    'oxmm.md',
    'oxbb.md',
    'oxbfn.md',
    'oxcm.md'
}
local zen_zen      = function() cmd('silent ZenMode') end
local zen_mdx      = function() cmd('call mdx#ToggleWrite()') end
local zen_mut      = function() cmd('silent MuttonToggle') end
local zen_dfm      = function() cmd('silent LiteDFMToggle') end
local zen_goy      = function() cmd('silent Goyo') end
local tlist_all = function() cmd('silent tabdo Tlist') end
local tagbarx   = function() cmd('silent tabdo Tagbar') end
local tagl_all  = function() tagbarx() end
local enva      = function() cmd('cd' .. hr) end -- X.tbn = cmd('echom tabpagenr()')
local envx      = function() cmd('cd' .. hr) end -- opt.number = true -- opt.numberwidth = 9
local envy      = function() cmd('tabfirst'); cmd('quit') end
local envzx     = function() cmd('tabfirst'); cmd('quit') end
--local envzy      = function() tagl_all(); cmd('tabfirst'); cmd('quit') end
local buf       = function(filename) cmd('silent badd ' .. filename) end
local edit      = function(filename) cmd('edit ' .. filename) end
local tnew      = function(filename) cmd('silent tabnew ' .. filename) end
local newx      = function() cmd('tabnew ') end
local svrt      = function(filename) cmd('silent vsplit ' .. filename) end
local shori     = function(filename) cmd('split ' .. filename) end

M.a = function() -- # a
  envx()
  tnew(paa)
  tnew(pab)
  svrt(paa)
  tnew(pab)
  svrt(pab)
  envzx()
  --zen_mdx()
end

M.pb = function() -- # a
  envx()
  tnew(pax)
  tnew(pay)
  svrt(pax)
  tnew(pay)
  svrt(pay)
  envzx()
  --zen_mdx()
end

M.ma = function() -- # ma
  envx()
  tnew(mjma)
  tnew(mjmb)
  svrt(mjma)
  tnew(mbb)
  svrt(msu)
  envzx()
  --cmd('TagbarClose')
  zen_mdx()
  --zen_zen()
end

M.mj = function() -- # o#mj ##########################################
  enva()
  tnew(mjma)
  --zen_mdx()
  tnew(msu)
  --zen_mdx()
  envzx()
end

M.mb = function() -- # mb ###########################################
  enva()
  tnew(m_auc)
  svrt(m_aub)
  svrt(m_aua)
  tnew(mba)
  svrt(mbb)
  svrt(mbb)
  tnewx()
  tnew(m_qra)
  tnew(m_qra)
  tnew(m_yra)
  svrt(m_yra)
  tnewx()
  tnew(mba)
  svrt(mba)
  tnew(mbb)
  svrt(mbb)
  tnewx()
  envzx()
end

M.m_future = function() -- # o#m_future #############################3
  enva()
  tnew(m_qra)
  svrt(m_qra)
  tnew(m_yra)
  svrt(m_yra)
  tnewx()
  tnew(mbb)
  svrt(mbb)
  tnew(mba)
  svrt(mba)
  tnewx()
end

M.m_future_qr = function() -- # o#m_future_qr ####################
  enva()
  tnew (m_qra)
  svrt(m_qra)
  tnew (m_yra)
  svrt(m_yra)
  tnewx()
  tnew (m_aua)
  svrt(m_aua)
  tnewx()
end

M.ua = function() -- Note Taking (o#na) #######################
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

M.ux = function()
  enva()
  edit(ux)
  --tagl_all()
end

M.uy = function()
  enva()
  edit(uy)
  --tagl_all()
end

M.ox_bufs = function()
    for _, file in ipairs(bufs) do
        buf(ha .. "/" .. file)
    end
end

M.oa_bufs = function()
    for _, file in ipairs(bufs_a) do
        buf(file)
    end
end

M.oa_x = function() -- Actionable Panels (o#oa_x)
    tnew(oi)
    tnew(oa)
    require('neowarrior').open_left()
    --svrt(oi)
    --tnew(ob)
    --svrt(oj)
    --tnew(oc)
    --svrt(oj)
    tnew(uc)
    zen_mut()
end

M.oa = function() -- Actionable Panels Master Function (o#oa)
    enva()
    M.oa_bufs()
    M.ox_bufs()
    M.oa_x()
    cmd('silent tabnext 1')
    cmd('silent quit')
    zen_mut()
end


M.ob = function() -- ob #############################
  enva()
  M.oa_x()
  tnew(oc)
  svrt(od)
  envzx()
end

M.ocx = function() -- oc #############################
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
 envzx()
end

M.odx = function() -- od ###############################
  tnew(jm)
  tnew(ua)
end

M.oda = function()
  enva()
  M.odx()
  M.oa_x()
  envzx()
end


M.ml = function() -- mail ###########################
    cmd('cd' .. hm_ml)
    tnew('aa.md')
    --cmd('NeoWarriorOpen Left')
    zen_mut()
    tnew('ab.md')
    zen_mut()
    tnew('oi.md')
    require('neowarrior').open_left()
    --zen_mut()
    tnew('oa.md')
    svrt('oi.md')

    buf('oxtk.md')
    buf('~/.config/muttm/bind.m')
    buf('ob.md')
    buf('README.md') -- ConfigGS
    buf('~/.config/mutt/muttrc')
    buf('~/.config/mutt/bind')
    buf('~/.config/mutt/bind.mx')
  --buf('~/.config/sieve/Open-Xchange')
  --buf('~/.local/bin/mlx/ml')
  --buf('ii.sc')
  --buf('ii.pn')
  envzx()
  --zen_mdx()
end

M.mlx = function() -- instant messaging / resources to share via whatsapp etc..
    cmd('cd' .. hm_ml)
    tnew('oy.md')
    envzx()
end

return M

-- xTODO: change filename of this script to a 3 letter name
-- TODO: o#ox_p ox_ds oe oe_x

