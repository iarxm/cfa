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
local maa      = ha .. '/aa' -- ha's
local mab      = ha .. '/ab'
local mba      = ha .. '/ba'
local mbb      = ha .. '/bb'
local mjma     = ha .. '/jm'
local mjmb     = ha .. '/jmb'
local mjmc     = ha .. '/jmc'
local m_aua    = ha .. '/vaua'
local m_aub    = ha .. '/vaux'
local m_auc    = ha .. '/vauy'
local m_qra    = ha .. '/nzqr'
local m_yra    = ha .. '/nyr'
local oa       = ha .. '/oa' -- o's
local ob       = ha .. '/ob'
local oc       = ha .. '/oc'
local od       = ha .. '/od'
local oi       = ha .. '/oi'
local oj       = ha .. '/oj'
local ua       = ha .. '/ua' -- u's
local ub       = ha .. '/ub'
local uc       = ha .. '/uc'
local ux       = ha .. '/ux'
local uy       = ha .. '/uy'
local msu      = hb .. '/x.msux' --hb's
local bufs = { -- bufs
    'oxpb',
    'oxtk',
    'oxeng',
    'oxds',
    'oxds.a',
    'oxds.dev',
    'oxds.asf',
    'oxdm',
    'oxdw',
    'oxdn',
    'oxuu',
    'oxmm',
    'oxbb',
    'oxbfn',
    'oxcm'
}
local zen = function() cmd('silent ZenMode') end
local wmode = function() cmd('call mdx#ToggleWrite()') end
local tlist_all = function() cmd('silent tabdo Tlist') end
local tagbarx = function() cmd('silent tabdo Tagbar') end
local tagl_all = function() tagbarx() end
local enva = function() cmd('cd' .. hr) end -- X.tbn = cmd('echom tabpagenr()')
local envx = function() cmd('cd' .. hr) end -- opt.number = true -- opt.numberwidth = 9
local envy = function() cmd('tabfirst'); cmd('quit') end
local envz = function() tagl_all(); cmd('tabfirst'); cmd('quit') end
local envzx = function() cmd('tabfirst'); cmd('quit') end
local buf = function(filename) cmd('silent badd ' .. filename) end
local edit = function(filename) cmd('edit ' .. filename) end
local tnew = function(filename) cmd('tabnew ' .. filename) end
local newx = function() cmd('tabnew ') end
local svert = function(filename) cmd('vsplit ' .. filename) end

M.a = function() -- # a
  envx()
  tnew(maa)
  tnew(mab)
  svert(maa)
  tnew(mab)
  svert(mab)
  envz()
  --wmode()
end

M.ma = function() -- # ma
  envx()
  tnew(mjma)
  tnew(mjmb)
  svert(mjma)
  tnew(mbb)
  svert(msu)
  envz()
  cmd('TagbarClose')
  wmode()
  --zen()
end

M.mj = function() -- # o#mj ##########################################
  enva()
  tnew(mjma)
  --wmode()
  tnew(msu)
  --wmode()
  envzx()
end

M.mb = function() -- # mb ###########################################
  enva()
  tnew (m_auc)
  svert(m_aub)
  svert(m_aua)
  tnew (mba)
  svert(mbb)
  svert(mbb)
  tnewx()
  tnew (m_qra)
  tnew (m_qra)
  tnew (m_yra)
  svert(m_yra)
  tnewx()
  tnew (mba)
  svert(mba)
  tnew (mbb)
  svert(mbb)
  tnewx()
  envz()
end

M.m_future = function() -- # o#m_future #############################3
  enva()
  tnew (m_qra)
  svert(m_qra)
  tnew (m_yra)
  svert(m_yra)
  tnewx()
  tnew (mbb)
  svert(mbb)
  tnew (maa)
  svert(maa)
  tnewx()
end

M.m_future_qr = function() -- # o#m_future_qr ####################
  enva()
  tnew (m_qra)
  svert(m_qra)
  tnew (m_yra)
  svert(m_yra)
  tnewx()
  tnew (m_aua)
  svert(m_aua)
  tnewx()
end

M.ua = function() -- Note Taking (o#na) #######################
  enva()
  edit(ua)
  tagl_all()
end

M.ub = function()
  enva()
  edit(ub)
  tagl_all()
end

M.uc = function()
  enva()
  edit(uc)
  tagl_all()
end

M.ux = function()
  enva()
  edit(ux)
  tagl_all()
end

M.ux = function()
  enva()
  edit(uy)
  tagl_all()
end

M.oa_x = function() -- Actionable Panels (o#oa_x)
  tnew (oa)
  svert(oi)
  tnew (ob)
  svert(oi)
  tnew (oc)
  svert(oj)
  tnew (uc)
  wmode()
end


M.oa = function() -- Actionable Panels Master Function (o#oa)
  enva()
  M.oa_x()
  M.ox_bufs()
  cmd('silent tabnext 1')
  cmd('silent quit')
  tagl_all()
  cmd('silent tabdo wincmd =')
  -- cmd('tabnext ' .. X.tbn)
  cmd('silent tabnext 1')
end

M.ox_bufs = function()
  for _, file in ipairs(bufs) do
   buf(ha .. "/" .. file)
  end
end

M.ob = function() -- ob #############################
  enva()
  M.oa_x()
  tnew(oc)
  svert(od)
  envzx()
end

M.ocx = function() -- oc #############################
  tnew(oc)
  svert(oc)
  tnew(od)
  svert(od)
  tnew(oi)
  svert(oi)
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
  tnew('aa')
  tnew('ab')
  tnew('ii')
  tnew('ii.aa')
  tnew('~/.config/mutt/bind')
  svert('~/.config/muttm/bind.m')
  buf('ii.aab')
  buf('ii.sc')
  buf('ii.pn')
  buf('readme') -- ConfigGS
  buf('~/.config/sieve/Open-Xchange')
  buf('~/.config/mutt/bind')
  buf('~/.config/mutt/bind.mx')
  buf('~/.config/mutt/muttrc')
  buf('~/.local/bin/mlx/ml')
  envz()
  zen()
  -- wmode()
end

return M
-- xTODO: change filename of this script to a 3 letter name
-- TODO: o#ox_p ox_ds oe oe_x

