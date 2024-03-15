" ======================================================
" AUTHOR: IAROM MADDEN
" DESCRIPTION: Sequencing all the functions into a linear naming logic
" =====================================================

" now moved to lua

"#######################################
" VISONARY DOWNFLOWS
"########################################

function! o#a()
" Opt
	cd $HOME/d
	set number
	set numberwidth=8
	" sp-----------------
	tabnew a/aax
	tabnew
" -----------------------
	tabnew a/aay
		vsplit a/aax
	tabnew a/aay
		vsplit
" Opt
	tabfirst
		quit
		Goyo
"  	exec "norm G"
"	exec "wincmd l"
"	split a/majouz
"	exec "wincmd h"
	"exec "wincmd J"
endfunction

" mm ################################
function! o#ma()
" Opt
	cd $HOME/d
	set number
	set numberwidth=8
" sp-----------------
" p
	tabnew a/mj
" end
"	tabnew
" -----------------------
" p	
	tabnew a/mjz
	vsplit a/mjz
" p
	tabnew a/mm.aro
	vsplit a/mm.upr
" Opt
	tabfirst
	quit
	Goyo
endfunction

function! o#mb()
	cd ~/d
	set nospell
" sp -------------------------------
" audio prg
	tabnew a/mmx.auy
	vsplit a/mmx.aux
	vsplit a/mmx.au
" principles / values
	tabnew a/mm.xval
	vsplit a/mm.xpri
	vsplit a/mm.aa
"end
	tabnew
" sp1  --------------------------------
" quarter
	tabnew a/mmq
	vsplit a/mmq
		exec "norm G"
" year
	tabnew a/mmv.yr
	vsplit a/mmv.yr
		exec "norm G"
	tabnew
" sp4 ------------------------------------
" decade
	tabnew a/mmv.dc
	vsplit a/mmv.dc
" vision
	tabnew a/mmv.aa
	vsplit a/mmv.aa
" end
	tabnew
" =================================
	quit
	tabfirst
	quit
endfunction

" FUTURE ####################
function! o#m_future()
	cd $HOME/d/
" sp1 =====================
" p1
	edit a/moqr
	vsplit a/moqr
" p2	
	tabnew a/mmv.yr
	vsplit a/mmv.yr
	tabnew
"sp ==================
	tabnew a/mmv.dc
	vsplit a/mmv.dc
	tabnew a/mmv.aa
	vsplit a/mmv.aa
	tabnew
	"exec "<M-L>G"
	"norm G<CR> 
endfunction

" FUTURE QR #################
function! o#m_future_qr()
	cd $HOME/d/
" sp1 =====================
" p1
	edit a/moq
	vsplit a/moq
" p2	
	tabnew a/mmv.yr
	vsplit a/mmv.yr
	tabnew
"sp ==================
	tabnew a/mmx.au
	vsplit a/mmx.au
	tabnew
endfunction


"mm"""""""""""""""""""""""""""""""""
" Measurement of habits / Moral inventory
function! o#mj()
	cd /home/iao/d/
		let l:tbn = tabpagenr()
	tabnew a/mjm
		"Tagbar
		"Tlist
		call md#WriteMode()
		"wincmd =
	tabnew a/msux
		call md#WriteMode()
	exe "tabnext " . l:tbn
		quit
	"ZenMode
endfunction


" ROUTINE #####################

function! o#m_routine()
	cd $HOME/d
"sp ====================
" p
	tabnew aic/ai
" p
	tabnew aic/ara.aoy
	vsplit aic/ara.aox
	vsplit aic/ara.ao
" e
	tabnew
" sp ===============
	tabnew aic/ara.dyu.x
	vsplit aic/ara.dyu.a
	vsplit aic/ara.dyu

	tabnew aic/ara.wake.x
	vsplit aic/ara.wake.a
	vsplit aic/ara.wake

	tabnew aic/arb.sleep.x
	vsplit aic/arb.sleep.a
	vsplit aic/arb.sleep
"e	
	tabnew
" sp ==============
	tabnew aic/ar.b
	vsplit aic/ar.a
		#call WideMargin()
" e
	tabnew
" end= ===========
	quit | tabnext 1 | quit
endfunction


"########################################
" NOTE TAKING
"########################################

" NA #############################

function! o#na()
	cd /home/iao/d/
  edit a/ua
  silent tabdo Tlist 
endfunction


"########################################
" ACTIONABLE PANELS
"#########################################

function! o#oa()
	cd /home/iao/d/
		let l:tbn = tabpagenr()
		"silent Tagbar
		"silent TagbarToggle
	silent call o#oa_x()
	silent call o#ox_buffers()
	
	silent tabnext 1
	silent quit
	"exe "tabnext " . l:tbn
		"quit
	"2sleep | quit
	"silent tabdo Tagbar
	"Tlist
	"2sleep
	silent tabdo Tlist 
	silent tabdo wincmd =
	exe "tabnext " . l:tbn

endfunction


" OA_X ##########################

function! o#oa_x()
	" TODO: - segaragate the todo panes from the 'dd' 'msu' panse, into
	" separate functions called by the master function?
"p=====================================
" p =============================
" CWD 
" 	- operational file 
" 	- for use during actions
" 	- it's nice to have a clear single pane as i mostly use one or the other
" 	- will setup a newtab for a/oj and can split pane either of them when
" 	necessary
	tabnew a/oa
		"TagbarToggle
		"wincmd =
	
	tabnew a/ob
		vsplit a/oj
		"TagbarToggle
		"wincmd =
"p ====================================
" Longterm Structuring
" 	- sorting into sorting seperate to oxXX
" 	- open list variant of closed list
	tabnew a/oc
		vsplit a/oi
		"TagbarToggle
		"wincmd =
	
"p ===========================
" dd
	tabnew a/ddc
		call md#WriteMode()
		"Tagbar
		"Limelight!

	"tabdo Tagbar
" p =============================
" Prioritising 
" 	- from closed list to operational space
" 	- I've removed this because I can simulate it above using buffers
" 		- switch from a/oj to a/ob when necessary
" 		- simpler and less noisy than having multiple panes open
"	tabnew a/ob
"	vsplit a/oa
"	Tagbar
"		wincmd =

	"Tlist
	"p ============================
" Transfer sorting
" 	- sorting out new items from operations 
" 	- into ii and other
" 	- use buffer swithcing to go to oxXX
" 	- eg ':bu ds' or ':bu tk' to switch to tk space
" 	- this can be done by switching tabs rather than having a dedicated space
"	tabnew a/oi
"	vsplit a/oa
"		setlocal nonumber
"	Tagbar
	"Tlist
""		wincmd =
" z=====================================
		"call WideMarginToggle()
"	Tlist
"		wincmd =
"	vsplit a/o
"		call WideMarginToggle()
endfunction


" OX_BUFFERS ########################

function! o#ox_buffers()
	"tabnew
	"let l:bfn = bufname('%')
	silent badd a/oxpb
	silent badd a/oxtk
	silent badd a/oxeng
"-
	silent badd a/oxds.a
	silent badd a/oxds.dev
"
	silent badd a/oxdm
	silent badd a/oxdw
	silent badd a/oxdn
"
	silent badd a/oxuu
	silent badd a/oxmm
"-
	silent badd a/oxbb
	silent badd a/oxbfn
	silent badd a/oxcm
	"exe "b " . l:bfn
	"quit
"	e a/oxuua
	"e a/oxdstk
endfunction


" ob #####################################

function! o#ob()
" previous name - voa
"opt ==========================
	cd /home/iao/d/
"sp1 =========================
	"source /home/iao/.local/zv/vo.vx
	call o#oa_x()
	tabnew a/oc
	vsplit a/ocb
"opt =======================
	tabnext 1 | quit
endfunction


" OC ########################

function! o#oc()
" previous name - voab
"opt===================
	cd /home/iao/d/
	"source $XDG_BIN_HOME/zv/voab.vx
	call o#oc_x()
	tabnext 1 | quit"
endfunction


" OC_X ######################

function! o#oc_x()
"sp===================
"stopped using the below
"sorting
"	- use 'bu XX' 
"	- rather than using 3 window repearts
"		- refer to older format at bottom
"p ---------------
	tabnew a/oc
	vsplit a/oc
	Tagbar
		wincmd =
"p ---------------
	tabnew a/ocb
	vsplit a/ocb
	Tagbar
		wincmd =
"p --------------
	tabnew a/oi
	vsplit a/oi
	Tagbar
		wincmd =
"end -------------
	tabnew
endfunction

" OD ######################

function! o#od()
"used to be more minimal tdo panes then vo
	cd /home/iao/d/
	"source $XDG_BIN_HOME/zv/voad.vx "sp1
	"source $XDG_BIN_HOME/zv/vo.vx "sp2
	call o#od_x()
	call o#oa_x()
	tabnext 1 | quit
endfunction

function! o#od_x()
"sp1 =======================
	tabnew a/majj
	tabnew a/dd
endfunction


" OE ######################

function! o#oe()
" previous vob
	cd $HOME/d/
	"source $XDG_BIN_HOME/zv/vo.vx
	"source $XDG_BIN_HOME/zv/vob.vxx
	call o#oe_x()
	call o#ox_buffers()
	tabnext 1 | quit
endfunction


" OE_X ######################

function! o#oe_x()
" p 		bs / cm
	tabnew a/oxbs
	vsplit a/oxcm
	vsplit a/oi
		wincmd l
" p		uu
	tabnew a/oxuua
	vsplit a/oxuu
	vsplit a/oi
		wincmd l
" p		tk / eng
	tabnew a/oxeng
	vsplit a/oxtk
	vsplit a/oi
		wincmd l
" seperator
	tabnew
" p		ds
	tabnew a/oxds
	vsplit a/oxdstk
	vsplit a/oi
		wincmd l
" p		ds
	tabnew a/oxdn
	vsplit a/oxdn
	vsplit a/oi
		wincmd l
" p		open
	tabnew | Vaffle a
	vsplit
	vsplit a/oi
		wincmd l
" endz
	"tabnew
" p1
"	tabnew a/oy
"	vsplit a/oi
"	vsplit a/oi
endfunction


function! o#ot_a()
	cd $HOME/d/
" tdo - replace with vo.vx
" sp1 ======================
" p1
	tabnew a/oc
	vsplit a/o
		call WideMargin()
" p2
	tabnew a/oc
	vsplit a/ocb
		call WideMargin()
" endz
	tabnew
" sp2 ========================
" p1
	tabnew a/ocb
	vsplit a/oi
	vsplit a/oi
" todo - replace with vob.vx
" sp ========================
" p2
	tabnew a/oxbs
	vsplit a/oxcm
	vsplit a/oi
" p3	
	tabnew a/oxuu
	vsplit
	view   a/oai
	vsplit a/oi
" p4
	tabnew | Vaffle
	vsplit
	vsplit a/oi
" endz
	tabnew
"tdo - make into .vx script
" sp3 ========================
" p1
	tabnew a/otat
	vsplit a/otaw
" p2
	tabnew a/otay
	vsplit a/otaw
" p3
	tabnew a/otady
	vsplit a/otaw
" endz
	tabnew
" sp4 =======================
" p1
	tabnew a/oady
	vsplit a/oc
		| call WideMargin()
" endz
	tabnew
" opt =========================
	tabnext 1 | quit
endfunction

" DYNAMIC PROJECT PANELS ###############################

function! o#ox_ds()
	cd ~/d
	tabnew
		let l:tbn = tabpagenr()

	tabnew dsao/aow.pl
		vsplit dsao/aow.cl
		Tagbar
	tabnew dsao/aob
		vsplit dsao/aoa
		Tagbar
	tabnew dsao/aox.mk
		vsplit dsao/aox.mk.posts.schd
		Tagbar
	
	exe "tabnext " . l:tbn
		quit
endfunction

function! o#ox_p(prx)
	let l:f_a = a:prx . "aoa"
	let l:f_b = a:prx . "aob"
	let l:f_c = a:prx . "aoc"
	cd ~/d
	exe "tabnew " . fnameescape( l:f_a )
		Tagbar
	exe "tabnew " . fnameescape( l:f_c )
		exe "vsplit " . fnameescape( l:f_b )
		Tagbar
	"exe "tabnew " . fnameescape( l:f_b )
		"exe "vsplit " . fnameescape( l:f_b )
		"Tagbar
	"exe "tabnew " . fnameescape( l:f_a )
		"exe "vsplit " . fnameescape( l:f_c )
		"Tagbar
endfunction

"################################################
" MAIL / COMS ##################################
"################################################

" MAIL WORKSPACES ################################
function! o#v_ml()
	cd ~/d/cmo.ml
	" p =============================
	
	tabnew ii
	tabnew ii.aa
	tabnew ~/.config/muttm/bind.m

	silent badd ii.aab
	silent badd ii.sc
	silent badd ii.pn
	" CONFIGS
	silent badd readme
	silent badd ~/.config/sieve/Open-Xchange
	silent badd ~/.config/mutt/bind
	silent badd ~/.config/mutt/bind.mx
	silent badd ~/.config/mutt/muttrc
	silent badd ~/.local/bin/ml/ml
	tabnext 1 | quit
	"tabnew ii.sc
		"split ii.sc
	"tabnew ii.pn
		"split ii.pn
	"tabnew
	"tabnew ~/.config/sieve/Open-Xchange
	"tabnew readme
		"call md#ToggleWrite()
	"--------------------------
endfunction

"set colorcolumn=80
	"set columns=81

