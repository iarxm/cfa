# iarom madden mail@iarom.org
import os
HOME                                = os.getenv("HOME")
SESSION_DIR                         = HOME + "/.local/share/qutebrowser/sessions/a-tabmanager/"
COLORS_BLACKX                       = HOME + "/.config/qutebrowser/styles/blackblack/black-all-sites.css"
os.environ['COLORS_BLACKX']         = COLORS_BLACKX
os.environ['WINDOW_ELEMENTS']       = HOME + "/.config/qutebrowser/styles/user.css"
c.downloads.location.directory      = "~/ai/"
c.changelog_after_upgrade           = "minor"
c.editor.command                    = ["st", "-c", "float", "nvim", "-O", "{}"] # float class applied
c.spellcheck.languages              = ['en-GB']
c.prompt.filebrowser                = True
c.new_instance_open_target          = "tab-bg"
c.input.insert_mode.auto_load       = True
c.completion.web_history.max_items  = 1000000
c.completion.cmd_history_max_items  = 100000
c.input.partial_timeout             = 2000
c.messages.timeout                  = 2000
c.tabs.background                   = True
c.tabs.new_position.related         = "last"
c.session.default_name              = "default_restore"
#c.auto_save.session                 = True
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
c.qt.args = [ \
    'ignore-gpu-blacklist', \
    'enable-gpu-rasterisation', \
    'enable-native-gpu-memory-buffers', \
    'num-raster-threads=4', \
    'enable-accelerated-video-decode',\
    'enable-features=VaapiVideoDecoder',\
    'enable-features=WebGPU',\
    'use-gl=desktop',\
    'enable-oop-rasterization',\
    'enable-raw-draw'
    ]
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
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt"
    ]
c.content.blocking.hosts.lists = [ \
    HOME + "/.config/qutebrowser/blocked-hosts"
    "/etc/qutebrowser/blocked-hosts", \
    'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts', \
    'https://raw.githubusercontent.com/blocklistproject/Lists/master/youtube.txt'
    ]
c.content.blocking.whitelist       = ['*://example.com/*', '*://surfline.com/*', '*://calendar.google.com/*']
c.content.cookies.accept           = 'all'
c.content.blocking.method          = 'both'
c.content.blocking.enabled         = True
c.content.notifications.enabled    = False
c.hints.mode                       = "letter"
c.hints.chars                      = "asdfghklqweruiopzxcvbn"
c.hints.min_chars                  = 1
c.keyhint.blacklist                = ["*"]
c.completion.open_categories       = ["quickmarks", "bookmarks", "history"]
c.scrolling.smooth                 = True # can make scrolling slow with mouse, but improves key scrolling
c.url.searchengines['gpt']         = 'https://chat.openai.com/search?q={}'
c.url.searchengines['gp']          = 'https://chat.openai.com/search?q={}'
c.url.searchengines['gs']          = 'http://scholar.google.ch/scholar?hl=en&q={}'
c.url.searchengines['s']           = "https://sci-hub.se/{}"
c.url.searchengines['g']           = 'http://www.google.com/search?hl=en&q={}'
c.url.searchengines['gt']          = 'https://translate.google.com/?sl=auto&tl=en&text={}&op=translate'
c.url.searchengines['y']           = 'https://www.youtube.com/results?search_query={}'
c.url.searchengines['dd']          = 'https://duckduckgo.com/?q={}'
c.url.searchengines['bb']          = 'https://www.bing.com/search?q={}' #searc
c.url.searchengines['gh']          = 'https://github.com/search?q={}&type=Code'
c.url.searchengines['aw']          = 'https://wiki.archlinux.org/?search={}'
c.url.searchengines['ap']          = 'https://www.archlinux.org/packages/?sort=&q={}'
c.url.searchengines['gm']          = 'https://www.google.com/maps/search/?api=1&query={}'
c.url.searchengines['m']           = 'https://www.google.com/maps/search/?api=1&query={}'
c.url.searchengines['rar']         = 'https://rargb.to/search/?search={}'
c.url.searchengines['tpb']         = 'https://ukpiratebay.org/search.php?q={}'
c.url.searchengines['amuk']        = 'https://www.amazon.co.uk/s?k={}'
c.url.searchengines['amde']        = 'https://www.amazon.de/s?k={}'
c.url.searchengines['amnl']        = 'https://www.amazon.nl/s?k={}'
c.url.searchengines['eb']          = 'https://www.ebay.ie/sch/i.html?_from=R40&_nkw={}&_sacat=0&LH_TitleDesc=0&rt=nc&LH_PrefLoc=3'
c.url.searchengines['adverts']     = 'https://www.adverts.ie/for-sale/q_{}/' # adverts / donedeal
c.url.searchengines['donedeal']    = 'https://www.donedeal.ie/all?words={}'
c.url.searchengines['ali']         = 'https://www.aliexpress.com/wholesale?catId=0&initiative_id=SB_20220502145726&isPremium=y&SearchText={}&spm=a2g0o.productlist.1000002.0'
c.url.searchengines['fbmarket']    = 'https://www.facebook.com/marketplace/104038149633202/search/?query={}'
c.url.searchengines['DEFAULT']     = c.url.searchengines['gpt']
c.aliases['gp']                    = 'open -t http://127.0.0.1:4000'
c.aliases['gr']                    = 'open -t https://feedbin.com/'
c.aliases['pdf']                   = 'print --pdf'
c.aliases['dict']                  = 'spawn --userscript ~/.config/qutebrowser/userscripts/dict'
c.aliases['bk']                    = 'spawn --userscript ~/.config/qutebrowser/userscripts/bukuadd'
c.aliases['qbx']                   = 'spawn qb x {url}'
c.aliases['firefox']               = 'spawn --userscript ~/.config/qutebrowser/userscripts/firefox --new-window {url}'
c.aliases['ff']                    = 'firefox'
c.aliases['chrome']                = 'spawn --userscript ~/.config/qutebrowser/userscripts/chrome --new-window {url}'
c.aliases['gc']                    = 'spawn --userscript ~/.config/qutebrowser/userscripts/chrome --new-window {url}'
c.aliases['grease-page-reload']    = 'greasemonkey-reload ;; reload'
c.aliases['oil']                   = 'spawn st -c flst-buku1 oil-search'
c.aliases['buku']                  = c.aliases['oil']
c.aliases['us_echo']               = 'spawn --userscript ~/.config/qutebrowser/userscripts/echo'
c.aliases['colcycle']              = 'config-cycle content.user_stylesheets ' + COLORS_BLACKX + '""'
c.aliases['colblack']              = 'set content.user_stylesheets ' + COLORS_BLACKX
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
c.aliases['session-go']            = 'cmd-set-text -s :spawn --userscript tab-manager.py ' + SESSION_DIR
c.aliases['session-open']          = 'spawn --userscript tab-manager.py ' + SESSION_DIR + ' open -f '
c.aliases['session-restore']       = 'spawn --userscript tab-manager.py ' + SESSION_DIR + ' restore -f '
c.aliases['session-Restore']       = 'spawn --userscript tab-manager.py ' + SESSION_DIR + ' restore -c -f  '
c.aliases['session-save']          = 'spawn --userscript tab-manager.py ' + SESSION_DIR + ' save-all -o -f '
c.aliases['session-savet']         = 'spawn --userscript tab-manager.py ' + SESSION_DIR + ' save -f '
c.aliases['session-delete']        = 'spawn --userscript tab-manager.py ' + SESSION_DIR + ' delete -f '
c.aliases['session-ls']            = 'spawn --userscript tab-manager.py ' + SESSION_DIR + ' help '
c.aliases['sg']                    = 'ses-go'
c.aliases['so']                    = 'ses-open'
c.aliases['sr']                    = 'ses-restore'
c.aliases['sR']                    = 'ses-restore'
c.aliases['ss']                    = 'ses-save'
c.aliases['st']                    = 'ses-savet'
c.aliases['sd']                    = 'ses-delete'
c.aliases['sl']                    = 'ses-ls'
c.aliases.update({
    # for daemon mode script
    'recycle':  'quit --save _recycle',
    'restart':  'quit --save _restart',
    'shutdown': 'quit --save _shutdown',
    })
#config.bind(';c',                  'config-source') #convert to short alias?
#config.bind(';g',                  'greasemonkey-reload') #convert to short alias?
#config.bind('gr',                  'spawn --userscript readability') #make alias
#config.bind('gc',                  'spawn --userscript gitclone') #make alias
#config.bind('gd',                  'spawn -u jsdownload') #make alias
#config.bind(';o',                  'spawn -u open_download') # download #make alias
#config.bind(';y',                   'hint links spawn yt-dlp {hint-url}') #make alias
#config.bind(';yy',                  'spawn yt-dlp {url}') # make alias
#config.bind(',d',                  "cmd-set-text -s :darkreader enable '{url}*'") #make alias
#config.bind(',r',                  "cmd-set-text -s :darkreader disable '{url}*'") #make alias
#config.bind('xx',                  'config-cycle statusbar.show always in-mode ;; config-cycle tabs.show always switching') #visualmods #make alias
#config.bind('xb',                  'config-cycle statusbar.show always in-mode') #make alias
#config.bind('xt',                  'config-cycle tabs.show always switching') #make alias
#### slowing config loading down
config.unbind('gb',                mode='normal')
config.unbind('b',                 mode='normal')
config.unbind('m',                 mode='normal')
config.unbind('q',                 mode='normal')
config.unbind('<Ctrl-B>',          mode='normal')
config.bind(';f',                  'firefox')
config.bind(';c',                  'chrome')
config.bind(';x',                  'qbx')
config.bind(';r',                  'reload')
config.bind(';yx',                  'spawn yt-dlp -x {url}') # make alias
config.bind(';t',                  'hint links spawn transmission-remote -a {hint-url}') # tors
config.bind(';T',                  'hint -r links spawn transmission-remote -a {hint-url}')
config.bind('gd',                  'hint links spawn -u ~/.config/qutebrowser/userscripts/doi')
config.bind('gu',                  'spawn --userscript unpaywall')
config.bind('gz',                  'spawn --userscript qute-zotero')
config.bind('gb',                  'spawn --userscript getbib')
config.bind('<z><i>',              'spawn --userscript qute-pass')
config.bind('<z><u>',              'spawn --userscript qute-pass --username-only')
config.bind('<z><p>',              'spawn --userscript qute-pass --password-only')
config.bind('<z><o>',              'spawn --userscript qute-pass --otp-only')
####
config.bind('<Ctrl-k>',            'tab-move +', mode='normal')
config.bind('<Ctrl-j>',            'tab-move -', mode='normal')
config.bind('P',                   'back',       mode='normal')
config.bind('V',                   'set statusbar.show always;; mode-enter caret ;; selection-toggle --line', mode='normal')
config.bind('o',                   'set statusbar.show always;; clear-messages;; cmd-set-text -s :open')
config.bind('O',                   'set statusbar.show always;; clear-messages;; cmd-set-text -s :open -t')
config.bind('t',                   'set statusbar.show always;; clear-messages;; cmd-set-text -s :open -t')
config.bind(':',                   'set statusbar.show always;; clear-messages;; cmd-set-text :')
config.bind('/',                   'set statusbar.show always;; clear-messages;; cmd-set-text /')
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
config.bind('<Ctrl-m>',            'cmd-set-text -s :quickmark-save', mode='normal')
config.bind('B',                   'oil',                  mode='normal')
config.bind('b',                   'cmd-set-text -s :bk',  mode='normal')
config.bind('se',                  ':cmd-set-text -s :session-load', mode='normal')
config.bind('sw',                  ':cmd-set-text -s :session-save', mode='normal')
config.bind('sr',                  ':cmd-set-text -s :session-delete', mode='normal')
config.bind(';r',                  'reload')
config.bind('<Alt-Shift-k>',       'zoom-in')
config.bind('<Alt-Shift-j>',       'zoom-out')
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=python:
#config.bind('p',                   'cmd-set-text -s :pdf', mode='normal')
#config.bind('<Shift-m>',           'cmd-set-text -s :quickmark-save', mode='normal')
#config.bind('<Escape>',            'mode-enter normal', mode='command')
#config.bind('<Return>',            'command-accept',    mode='command')
#config.bind('<Alt-j>',             'cmd-run-with-count 15 scroll down', mode='normal')
#config.bind('<Alt-k>',             'cmd-run-with-count 15 scroll up', mode='normal')
#config.bind('<Alt-j>',             'cmd-run-with-count 10 scroll down', mode='normal')
#config.bind('<Ctrl-r>',            'restart',    mode='normal')
#config.bind('<Ctrl-Right>',        'tab-next',   mode='normal')
#config.bind('<Ctrl-Left>',         'tab-prev',   mode='normal')
#os.environ['QT_QPA_PLATFORMTHEME']  = "qt6ct" # req to load qt6 cfgs # already set in profile shell
#os.environ['QUTE_POST_CLONE']      = 'notify-send "cloned!" "${QUTE_URL}"'
#os.environ['QUTE_BIB_FILEPATH']    = "${HOME}/jf/iic/bib/qute.bib"
#COLORS_SOLAR_D                     = QUTE_CONFIG_HOME + "/styles/solarized-d/solarized-dark-all-sites.css"
#COLORS_SOLAR_L                     = QUTE_CONFIG_HOME + "/styles/solarized-l/solarized-light-all-sites.css"
#DATA                               = '/dat'
#SESSION_DIR                        = "~/.local/share/qutebrowser/sessions/a-tabmanager/"
#import glob
