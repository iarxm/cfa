-- TODO: o#ox_p ox_ds oe oe_x

local M        = {}
local X        = {}
local opt      = vim.opt
local cmd      = vim.api.nvim_command

local hr       = "$HOME/d"
local ha       = hr .. '/a/a'
local hb       = hr .. '/a/aa'
local maa      = ha .. '/aa'
local mab      = ha .. '/ab'
local mba      = ha .. '/ba'
local mbb      = ha .. '/bb'
local mjm      = ha .. '/jm'
local mjmz     = ha .. '/jmz'
local m_aua    = ha .. '/vaua'
local m_aub    = ha .. '/vaux'
local m_auc    = ha .. '/vauy'
local m_qr     = ha .. '/nzqr'
local m_yr     = ha .. '/nyr'
local msu      = hb .. '/x.msux'

local oa       = ha .. '/oa'
local ob       = ha .. '/ob'
local oc       = ha .. '/oc'

-- local od       = ha .. '/od'
local oi       = ha .. '/oi'
local oj       = ha .. '/oj'

local ua       = ha .. '/ua'
local ub       = ha .. '/ub'
local uc       = ha .. '/uc'

local bufs = {
    'oxpb',
    'oxtk',
    'oxeng',
    'oxds.a',
    'oxds.dev',
    'oxdm',
    'oxdw',
    'oxdn',
    'oxuu',
    'oxmm',
    'oxbb',
    'oxbfn',
    'oxcm'
  }

local function zen()
  cmd('ZenMode')
end

local function wmode()
  cmd('call md#WriteMode()')
end

local function tlist_all()
  cmd('silent tabdo Tlist')
end

local function enva()
  cmd('cd' .. hr)
  -- X.tbn = cmd('echom tabpagenr()')
end

local function envx()
  cmd('cd' .. hr)
  opt.number          = true
  opt.numberwidth     = 9
end

local function envy()
  cmd('tabfirst')
  cmd('quit')
  zen()
end

local function envz()
  cmd('tabfirst')
  cmd('quit')
end

local function envzx()
  -- cmd('tabnext' .. X.tbn)
  cmd('tabfirst')
  cmd('quit')
end

local function buf(filename)
  cmd('silent badd ' .. filename)
end

local function edit(filename)
  cmd('edit ' .. filename)
end

local function tnew(filename)
  cmd('tabnew ' .. filename)
end

local function tnewx()
  cmd('tabnew')
end

local function svert(filename)
  cmd('vsplit' .. filename)
end


-- # a

M.a = function()
  envx()
  tnew(maa)
  tnewx()

  tnew(mab)
  svert(maa)

  tnew(mab)
  svert(mab)

  envy()
end

-- # ma

M.ma = function()
  envx()

  tnew(mjm)

  tnew(mjmz)
  svert(mjmz)

  tnew(mbb)
  svert(mbb)

  envy()
end

-- # mb

M.mb = function()
  enva()

  tnew (m_auc)
  svert(m_aub)
  svert(m_aua)

  tnew (mba)
  svert(mbb)
  svert(mbb)

  tnewx()

  tnew (m_qr)
  tnew (m_qr)

  tnew (m_yr)
  svert(m_yr)

  tnewx()

  tnew (mba)
  svert(mba)

  tnew (mbb)
  svert(mbb)

  tnewx()

  envz()
end


-- # o#m_future

M.m_future = function()
  enva()
  -- sp1.1
  tnew (m_qr)
  svert(m_qr)
  -- sp1.2
  tnew (m_yr)
  svert(m_yr)
  tnewx()
  -- sp2.1
  tnew (mbb)
  svert(mbb)
  -- sp2.2
  tnew (maa)
  svert(maa)
  tnewx()
end

-- # o#m_future_qr

M.m_future_qr = function()
  enva()
  -- sp1.1
  tnew (m_qr)
  svert(m_qr)
  -- sp1.2
  tnew (m_yr)
  svert(m_yr)
  tnewx()
  -- sp2.1
  tnew (m_aua)
  svert(m_aua)
  tnewx()
end


-- # o#mj

M.mj = function()
  enva()

  tnew(mjm)
  wmode()

  tnew(msu)
  wmode()

  envzx()
end


-- Note Taking (o#na)

M.ua = function()
  enva()
  edit(ua)
  tlist_all()
end


-- Actionable Panels (o#oa_x)

M.oa_x = function()
  tnew (oa)

  tnew (ob)
  svert(oj)

  tnew (oc)
  svert(oi)

  tnew (uc)
  wmode()
end

-- Actionable Panels Master Function (o#oa)
M.oa = function()
  enva()

  M.oa_x()
  M.ox_bufs()

  cmd('silent tabnext 1')
  cmd('silent quit')

  tlist_all()
  cmd('silent tabdo wincmd =')
  -- cmd('tabnext ' .. X.tbn)
  cmd('silent tabnext 1')
end


M.ox_bufs = function()
  for _, file in ipairs(bufs) do
   buf(file)
  end
end

-- ob
M.ob = function()
  enva()

  M.oa_x()
  tnew(oc)
  svert(od)

  envzx()
end

-- oc 

M.ocx = function()
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


-- od

M.odx = function()
  tnew(jm)
  tnew(ua)
end

M.od = function()
  enva()
  M.odx()
  M.oa_x()
  envzx()
end

-- #######################################
-- MAIL #################################
-- ######################################

M.ml = function()
  cmd('cd ~/d/cm/yml')

  tnew('ii')
  tnew('ii.aa')
  tnew('~/.config/muttm/bind.m')

  buf('ii.aab')
  buf('ii.sc')
  buf('ii.pn')

  -- ConfigGS
  buf('readme')
  buf('~/.config/sieve/Open-Xchange')
  buf('~/.config/mutt/bind')
  buf('~/.config/mutt/bind.mx')
  buf('~/.config/mutt/muttrc')
  buf('~/.local/bin/ml/ml')
  envz()
end

-- return

return M
