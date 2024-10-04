# iarom madden mail@iarom.org
import os
import glob
DATA                                = '/dat'
HOME                                = os.getenv("HOME")
os.environ['QT_QPA_PLATFORMTHEME']  = "qt6ct" # req to load qt6 cfgs
os.environ['QUTE_POST_CLONE']       = 'notify-send "cloned!" "${QUTE_URL}"'
os.environ['QUTE_POST_CLONE']       = 'notify-send "cloned!" "${QUTE_URL}"'
os.environ['QUTE_BIB_FILEPATH']     = "${HOME}/jf/iic/bib/qute.bib"
QUTE_CFG_DIR                        = HOME + "/.config/qutebrowser"
QUTE_UIX_DIR                        = QUTE_CFG_DIR + "/userinterfa"
QUTE_BLOCKED                        = QUTE_CFG_DIR + "/blocked-hosts"
QUTE_BLOCKED_ETC                    = "/etc/qutebrowser/blocked-hosts"
QUTE_UIX_BLK                        = "file://" + QUTE_UIX_DIR + "/ahm/index-blank.html"
QUTE_UIX_BGX                        = "file://" + QUTE_UIX_DIR + "/ahm/index-backg.html"
c.url.default_page                  = QUTE_UIX_BGX
c.url.start_pages                   = QUTE_UIX_BGX
c.downloads.location.directory      = DATA + "/ui/iaa/"
c.editor.command                    = ["st", "-c", "float", "nvim", "-O", "{}"] # i3 config 'float'
filepicker                          = ["st", "-c", "filepicker", "-t", "filepicker", "-e", "lf", "-command", "set nohidden", "-selection-path={}",]
# todo: folder picker; and beautify
c.spellcheck.languages              = ['en-GB']
c.zoom.default                      = "80%"
c.downloads.position                = "bottom"
c.prompt.radius                     = 0
c.fileselect.handler                = "external"
c.fileselect.folder.command         = filepicker
c.fileselect.multiple_files.command = filepicker
c.fileselect.single_file.command    = filepicker
c.prompt.filebrowser                = True
c.new_instance_open_target          = "tab-bg"
c.input.insert_mode.auto_load       = True
c.completion.height                 = "30%"
c.completion.web_history.max_items  = 1000000
c.completion.cmd_history_max_items  = 100000
c.input.partial_timeout             = 2000
c.messages.timeout                  = 2000
c.tabs.position                     = "bottom"
c.tabs.background                   = True
c.tabs.favicons.show                = "never"
c.tabs.title.format                 = "{current_title}"
c.tabs.new_position.related         = "last"
c.tabs.show                         = "switching"
c.tabs.show_switching_delay         = 2000
c.session.default_name              = "default_restore"
c.auto_save.session                 = True
c.content.webgl                     = True
c.content.autoplay                  = False
c.content.geolocation               = True
c.content.prefers_reduced_motion    = True
c.content.plugins                   = False # ?
c.content.xss_auditing              = True
c.content.cache.size                = 2147483647
c.qt.chromium.low_end_device_mode   = "auto"
c.qt.chromium.process_model         = "process-per-site-instance"
#c.qt.chromium.experimental_web_platform_features = "always"
c.qt.workarounds.disable_accelerated_2d_canvas = "always"
c.qt.args                           = [ \
    'ignore-gpu-blacklist', \
    'enable-gpu-rasterisation', \
    'enable-native-gpu-memory-buffers', \
    'num-raster-threads=4', \
    'enable-accelerated-video-decode',\
    'enable-features=VaapiVideoDecoder',\
    'enable-features=WebGPU',\
    'use-gl=desktop',\
    'enable-oop-rasterization',\
    'enable-raw-draw' ]
config.set('content.headers.user_agent', \
    'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) Chrome/110.0.0.0 Safari/{webkit_version} Edg/110.0.1587.57', \
    '*://www.bing.com/*') # setting user agent per domain pattern - bing: for accessing new chatgpt feature via edge browser usage
c.content.blocking.adblock.lists = [ \
    "https://easylist.to/easylist/easylist.txt", \
    "https://easylist.to/easylist/easyprivacy.txt", \
    "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt", \
    "https://easylist.to/easylist/fanboy-annoyance.txt", \
    "https://secure.fanboy.co.nz/fanboy-annoyance.txt", \
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt", \
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2022.txt", \
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt", \
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt", \
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt", \
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt" ]
c.content.blocking.hosts.lists = [ \
    QUTE_BLOCKED, \
    QUTE_BLOCKED_ETC, \
    'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts', \
    'https://raw.githubusercontent.com/blocklistproject/Lists/master/youtube.txt' ]
c.content.blocking.whitelist       = ['*://example.com/*', '*://surfline.com/*', '*://calendar.google.com/*']
#c.content.blocking.enabled        = ['*://surfline.com*'] #['*://example.com/*']
c.content.cookies.accept           = 'all'
c.content.blocking.method          = 'both'
c.content.blocking.enabled         = True
c.content.notifications.enabled    = False
c.hints.border                     = "3px solid #CCCCCC"
c.hints.mode                       = "letter"
c.hints.chars                      = "asdfghklqweruiopzxcvbn"
c.hints.min_chars                  = 1
c.keyhint.blacklist                = ["*"]
c.completion.open_categories       = ["quickmarks", "bookmarks", "history"]
c.fonts.statusbar                  = "1pt Sourc Sans Pro"
c.statusbar.padding                = { "bottom": 0, "left": 0, "right": 0, "top": 0 }
#c.statusbar.show                   = "in-mode"
c.statusbar.show                   = "never"
c.statusbar.widgets                = [] # ["url", "progress", "scroll"]
c.window.hide_decoration           = True
c.scrolling.smooth                 = True # can make scrolling slow with mouse, but improves key scrolling
c.url.searchengines['gs']          = 'http://scholar.google.ch/scholar?hl=en&q={}' #academic.bib
c.url.searchengines['scihub']      = "https://sci-hub.se/{}" #academic.get
c.url.searchengines['sci']         = c.url.searchengines['scihub'] #academic.get
c.url.searchengines['#sci']        = c.url.searchengines['scihub'] #academic.get
c.url.searchengines['s']           = c.url.searchengines['scihub'] #academic.get
c.url.searchengines['sc']          = c.url.searchengines['scihub'] #academic.get
c.url.searchengines['bing']        = 'https://www.bing.com/search?q={}' #search
c.url.searchengines['bb']          = c.url.searchengines['bing']
c.url.searchengines['google']      = 'http://www.google.com/search?hl=en&q={}'
c.url.searchengines['g']           = c.url.searchengines['google']
c.url.searchengines['gg']          = c.url.searchengines['google']
c.url.searchengines['dd']          = 'https://duckduckgo.com/?q={}'
c.url.searchengines['youtube']     = 'https://www.youtube.com/results?search_query={}'
c.url.searchengines['yt']          = c.url.searchengines['youtube']
c.url.searchengines['yy']          = c.url.searchengines['youtube']
c.url.searchengines['y']           = c.url.searchengines['youtube']
c.url.searchengines['ww']          = 'https://secure.wikimedia.org/wikipedia/en/w/index.php?title=Special%%3ASearch&search={}'
c.url.searchengines['DEFAULT']     = c.url.searchengines['bing'] # define
c.url.searchengines['gh']          = 'https://github.com/search?q={}&type=Code' #csci
c.url.searchengines['aw']          = 'https://wiki.archlinux.org/?search={}'
c.url.searchengines['ap']          = 'https://www.archlinux.org/packages/?sort=&q={}'
c.url.searchengines['ar']          = 'https://www.archlinux.org/packages/?sort=&q={}'
c.url.searchengines['ar']          = 'https://www.archlinux.org/packages/?sort=&q={}'
c.url.searchengines['aur']         = 'https://aur.archlinux.org/packages/?O=0&K={}'
c.url.searchengines['au']          = 'https://aur.archlinux.org/packages/?O=0&K={}'
c.url.searchengines['gm']          = 'https://www.google.com/maps/search/?api=1&query={}' #navigation.maps
c.url.searchengines['maps']        = 'https://www.google.com/maps/search/?api=1&query={}'
c.url.searchengines['gt']          = 'https://translate.google.com/?sl=auto&tl=en&text={}&op=translate' #translate
c.url.searchengines['rar']         = 'https://rargb.to/search/?search={}' #torrennts
c.url.searchengines['tpb']         = 'https://ukpiratebay.org/search.php?q={}'
c.url.searchengines['amazon']      = 'https://www.amazon.co.uk/s?k={}' #amazon
c.url.searchengines['sh.amu']      = c.url.searchengines['amazon']
c.url.searchengines['am']          = c.url.searchengines['amazon']
c.url.searchengines['amu']         = c.url.searchengines['amazon']
c.url.searchengines['shamd']       = 'https://www.amazon.de/s?k={}'
c.url.searchengines['amd']         = 'https://www.amazon.de/s?k={}'
c.url.searchengines['shamn']       = 'https://www.amazon.nl/s?k={}'
c.url.searchengines['amn']         = 'https://www.amazon.nl/s?k={}'
c.url.searchengines['ebay']        = 'https://www.ebay.ie/sch/i.html?_from=R40&_nkw={}&_sacat=0&LH_TitleDesc=0&rt=nc&LH_PrefLoc=3' #ebay
c.url.searchengines['she']         = c.url.searchengines['ebay']
c.url.searchengines['eb']          = c.url.searchengines['ebay']
#c.url.searchengines['she'] = 'https://www.ebay.ie/sch/i.html?_from=R40&_nkw={}&_sacat=0&LH_TitleDesc=0&rt=nc&LH_PrefLoc=3'
#c.url.searchengines['eb'] = 'https://www.ebay.ie/sch/i.html?_from=R40&_nkw={}&_sacat=0&LH_TitleDesc=0&rt=nc&LH_PrefLoc=3'
c.url.searchengines['adverts']     = 'https://www.adverts.ie/for-sale/q_{}/' #adverts.donedeal
c.url.searchengines['shadv']       = c.url.searchengines['adverts']
c.url.searchengines['shadv']       = 'https://www.adverts.ie/for-sale/q_{}/'
c.url.searchengines['sha']         = 'https://www.adverts.ie/for-sale/q_{}/'
c.url.searchengines['adv']         = 'https://www.adverts.ie/for-sale/q_{}/'
c.url.searchengines['donedeal']    = 'https://www.donedeal.ie/all?words={}'
c.url.searchengines['shdon']       = 'https://www.donedeal.ie/all?words={}'
c.url.searchengines['shd']         = 'https://www.donedeal.ie/all?words={}'
c.url.searchengines['don']         = 'https://www.donedeal.ie/all?words={}'
c.url.searchengines['shali']       = 'https://www.aliexpress.com/wholesale?catId=0&initiative_id=SB_20220502145726&isPremium=y&SearchText={}&spm=a2g0o.productlist.1000002.0' #aliexpress
c.url.searchengines['ali']         = 'https://www.aliexpress.com/wholesale?catId=0&initiative_id=SB_20220502145726&isPremium=y&SearchText={}&spm=a2g0o.productlist.1000002.0'
c.url.searchengines['fbmarket']    = 'https://www.facebook.com/marketplace/104038149633202/search/?query={}' #facebook.marketplace
c.aliases['ge']                    = 'open -t https://wiki.archlinux.org/index.php/Forum_Etiquette'
c.aliases['gf']                    = 'open -t http://flickr.com/jasonwryan '
c.aliases['gj']                    = 'open -t http://jasonwryan.com'
c.aliases['gp']                    = 'open -t http://127.0.0.1:4000'
c.aliases['gr']                    = 'open -t https://feedbin.com/'
c.aliases['pdf']                   = 'print --pdf'
c.aliases['dict']                  = 'spawn --userscript ~/.config/qutebrowser/userscripts/dict'
c.aliases['bk']                    = 'spawn --userscript ~/.config/qutebrowser/userscripts/bukuadd'
c.aliases['qbx']                   = 'spawn qb xw {url}'
c.aliases['firefox']               = 'spawn firefox --new-window {url}'
c.aliases['ff']                    = 'firefox'
c.aliases['oil']                   = 'spawn st -c stf-buku1 oil-search'
c.aliases['us_echo']               = 'spawn --userscript ~/.config/qutebrowser/userscripts/echo'
c.aliases['colcycle']              = 'config-cycle content.user_stylesheets ~/.config/qutebrowser/userinterfa/sty/blackblack/black-all-sites.css ""'
c.aliases['colblack']              = 'set content.user_stylesheets ~/.config/qutebrowser/userinterfa/sty/blackblack/black-all-sites.css'
c.aliases['dread-enable']          = 'spawn --userscript darkreader.py enable domain'
c.aliases['dread-disable']         = 'spawn --userscript darkreader.py disable domain'
c.aliases['darkreader']            = 'spawn --userscript darkreader.py'
c.aliases['mpvq']                  = 'spawn xdotool key space ;; spawn --userscript mpv.qt {url}'
c.aliases['mpvh']                  = 'hint links spawn --userscript view_in_mpv {hint-url}'
c.aliases['mpv']                   = 'spawn --userscript view_in_mpv {url}'
c.aliases['ytdl']                  = 'spawn yt-dlp {url}' # youtube-dl
c.aliases['ytdlx']                 = 'spawn yt-dlp -x {url}'
c.aliases['doi.sci']               = 'hint links userscript ~/.config/qutebrowser/userscripts/doi'
c.aliases['doi.unp']               = 'spawn --userscript unpaywall' # doi unpwaywal
c.aliases.update({ # for daemon mode script
    'recycle':  'quit --save _recycle',
    'restart':  'quit --save _restart',
    'shutdown': 'quit --save _shutdown',})
config.unbind('gb',                mode='normal')
config.unbind('b',                 mode='normal')
config.unbind('m',                 mode='normal')
config.unbind('q',                 mode='normal')
config.unbind('<Ctrl-B>',          mode='normal')
config.bind(';f',                  'firefox')
config.bind(';x',                  'qbx')
config.bind(';r',                  'reload')
config.bind(';c',                  'config-source')
config.bind(';g',                  'greasemonkey-reload')
config.bind(';s',                  'colblack')
config.bind(';d',                  'colcycle')
config.bind('qq',                  'mpvq') # mpv
config.bind(';ml',                 'mpvh')
config.bind(';mm',                 'mpv')
config.bind(';u',                  'hint links spawn yt-dlp {hint-url}')
config.bind(';U',                  'spawn yt-dlp {url}')
config.bind(';a',                  'spawn yt-dlp -x {url}')
config.bind(';o',                  'spawn -u open_download') # download
config.bind('gd',                  'spawn -u jsdownload')
####################### slowing config loading down:
config.bind(';t',                  'hint links spawn transmission-remote -a {hint-url}') # tors
config.bind(';T',                  'hint -r links spawn transmission-remote -a {hint-url}')
config.bind('gl',                  'hint links spawn -u ~/.config/qutebrowser/userscripts/doi')
config.bind('gu',                  'spawn --userscript unpaywall')
config.bind('gz',                  'spawn --userscript qute-zotero')
config.bind('gb',                  'spawn --userscript getbib')
config.bind('gr',                  'spawn --userscript readability')
config.bind('gc',                  'spawn --userscript gitclone')
################## #
config.bind('<z><l>',              'spawn --userscript qute-pass')
config.bind('<z><u>',              'spawn --userscript qute-pass --username-only')
config.bind('<z><p>',              'spawn --userscript qute-pass --password-only')
config.bind('<z><o>',              'spawn --userscript qute-pass --otp-only')
###################
config.bind('<Alt-j>',             'cmd-run-with-count 15 scroll down', mode='normal')
config.bind('<Alt-k>',             'cmd-run-with-count 15 scroll up', mode='normal')
config.bind('<Alt-j>',             'cmd-run-with-count 10 scroll down', mode='normal')
config.bind('<Ctrl-r>',            'restart',    mode='normal')
config.bind('<Ctrl-Right>',        'tab-next',   mode='normal')
config.bind('<Ctrl-Left>',         'tab-prev',   mode='normal')
config.bind('<Ctrl-Shift-Right>',  'tab-move +', mode='normal')
config.bind('<Ctrl-Shift-Left>',   'tab-move -', mode='normal')
config.bind('P',                   'back',       mode='normal')
config.bind('o',                   'set statusbar.show always;; clear-messages;; cmd-set-text -s :open')
config.bind('O',                   'set statusbar.show always;; clear-messages;; cmd-set-text -s :open -t')
config.bind('t',                   'set statusbar.show always;; clear-messages;; cmd-set-text -s :open -t')
config.bind(':',                   'set statusbar.show always;; clear-messages;; cmd-set-text :')
config.bind('/',                   'set statusbar.show always;; clear-messages;; cmd-set-text /')
config.bind('V',                   'set statusbar.show always;; mode-enter caret ;; selection-toggle --line', mode='normal')
config.bind('v',                   'set statusbar.show always;; mode-enter caret',       mode='normal')
config.bind('i',                   'set statusbar.show always;; mode-enter insert',      mode='normal')
config.bind('f',                   'set statusbar.show always;; hint',                   mode='normal')
config.bind('<Ctrl-v>',            'set statusbar.show always;; mode-enter passthrough', mode='normal')
config.bind('`',                   'set statusbar.show always;; mode-enter set_mark',    mode='normal')
config.bind("'",                   'set statusbar.show always;; mode-enter jump_mark',   mode='normal')
config.bind('c',                   'mode-enter normal;; set statusbar.show never',         mode='caret')
config.bind('<Escape>',            'mode-leave;;        set statusbar.show never',         mode='caret')
config.bind('<Escape>',            'mode-leave;;        set statusbar.show never',         mode='passthrough')
config.bind('<Escape>',            'mode-leave;;        set statusbar.show never',         mode='insert')
config.bind('<Escape>',            'mode-leave;;        set statusbar.show never',         mode='hint')
config.bind('<Escape>',            'mode-leave;;        set statusbar.show never',         mode='command')
config.bind('<Return>',            'command-accept;;    set statusbar.show never',         mode='command')
#config.bind('<Escape>',            'mode-enter normal', mode='command')
#config.bind('<Return>',            'command-accept',    mode='command')
config.bind('xx',                  'config-cycle statusbar.show always in-mode ;; config-cycle tabs.show always switching') #visualmods
config.bind('xb',                  'config-cycle statusbar.show always in-mode')
config.bind('xt',                  'config-cycle tabs.show always switching')
config.bind('<Ctrl-m>',            'cmd-set-text -s :quickmark-save', mode='normal')
config.bind('<Shift-m>',           'cmd-set-text -s :quickmark-save', mode='normal')
config.bind('B',                   'oil',                  mode='normal')
config.bind('b',                   'cmd-set-text -s :bk',  mode='normal')
config.bind('p',                   'cmd-set-text -s :pdf', mode='normal')
config.bind('se',                  ':cmd-set-text -s :session-load', mode='normal')
config.bind('sl',                  ':cmd-set-text -s :session-load', mode='normal')
config.bind('sw',                  ':cmd-set-text -s :session-save', mode='normal')
config.bind('sr',                  ':cmd-set-text -s :session-delete', mode='normal')
config.bind(';r',                  'reload')
config.bind('<Alt-Shift-k>',       'zoom-in')
config.bind('<Alt-Shift-j>',       'zoom-out')
config.bind(',d',                  "set-cmd-text -s :darkreader enable '{url}*'")
config.bind(',r',                  "set-cmd-text -s :darkreader disable '{url}*'")
c.fonts.default_family                           = ["Source Sans Pro",
                                                    "Noto Sans Mono",
                                                    "DejaVu Sans Mono",
                                                    "Liberation Mono"]
c.fonts.tabs.selected                            = "10pt Source Sans Pro"
c.fonts.statusbar                                = "10pt Sourc Sans Pro"
c.fonts.hints                                    = "16pt DejaVu Sans Mono"
c.fonts.messages.info                            = "13pt Noto Sans Mono"
c.fonts.tabs.unselected                          = c.fonts.tabs.selected
c.fonts.downloads                                = c.fonts.statusbar 
c.fonts.prompts                                  = c.fonts.statusbar
c.fonts.keyhint                                  = c.fonts.messages.info
c.fonts.messages.warning                         = c.fonts.messages.info
c.fonts.messages.error                           = c.fonts.messages.info
c.fonts.completion.entry                         = c.fonts.statusbar
c.fonts.completion.category                      = c.fonts.statusbar
