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
c.content.blocking.method           = "both"
c.content.blocking.enabled          = True
c.content.notifications.enabled     = False
c.content.cookies.accept            = "all"
c.hints.mode                        = "letter"
c.hints.chars                       = "asdfghklqweruiopzxcvbn"
c.hints.min_chars                   = 1
c.keyhint.blacklist                 = ["*"]
c.completion.open_categories        = ["quickmarks", "bookmarks", "history"]
c.scrolling.smooth                  = True # can make scrolling slow with mouse, but improves key scrolling
c.qt.chromium.low_end_device_mode   = "auto"
c.qt.chromium.process_model         = "process-per-site-instance"
#c.qt.chromium.experimental_web_platform_features = "always"
c.qt.workarounds.disable_accelerated_2d_canvas = "always"
c.qt.args = [ \
    "ignore-gpu-blacklist",\
    "enable-gpu-rasterisation",\
    "enable-native-gpu-memory-buffers",\
    "num-raster-threads=4",\
    "enable-accelerated-video-decode",\
    "enable-features=VaapiVideoDecoder",\
    "enable-features=WebGPU",\
    #"use-gl=desktop",\ #caused crash 2025-MAY
    "enable-oop-rasterization",\
    "enable-raw-draw",\
    "stylesheet=" + HOME + "/.config/qutebrowser/qsettings/fix-tooltip.qss"
]
config.set( \
    'content.headers.user_agent', \
        'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) Chrome/110.0.0.0 Safari/{webkit_version} Edg/110.0.1587.57', \
        '*://www.bing.com/*' # bing: for accessing gpt feature via edge browser usage
    # setting user agent per domain pattern
) 
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
    HOME + "/.config/qutebrowser/blocked-hosts",
    "/etc/qutebrowser/blocked-hosts", \
    'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts', \
    'https://raw.githubusercontent.com/blocklistproject/Lists/master/youtube.txt'
]
c.content.blocking.whitelist = [ \
    '*://example.com/*',
    '*://surfline.com/*',
    '*://calendar.google.com/*'
]
c.url.searchengines = {
    'gp':          'https://chat.openai.com/search?q={}',
    'gs':          'http://scholar.google.ch/scholar?hl=en&q={}',
    's':           "https://sci-hub.se/{}",
    'g':           'http://www.google.com/search?hl=en&q={}',
    'gt':          'https://translate.google.com/?sl=auto&tl=en&text={}&op=translate',
    'y':           'https://www.youtube.com/results?search_query={}',
    'dd':          'https://duckduckgo.com/?q={}',
    'bb':          'https://www.bing.com/search?q={}', #searc
    'gh':          'https://github.com/search?q={}&type=Code',
    'aw':          'https://wiki.archlinux.org/?search={}',
    'ap':          'https://www.archlinux.org/packages/?sort=&q={}',
    'au':          'https://aur.archlinux.org/packages/?O=0&K={}',
    'gm':          'https://www.google.com/maps/search/?api=1&query={}',
    'm':           'https://www.google.com/maps/search/?api=1&query={}',
    'rar':         'https://rargb.to/search/?search={}',
    'tpb':         'https://ukpiratebay.org/search.php?q={}',
    'amuk':        'https://www.amazon.co.uk/s?k={}',
    'amde':        'https://www.amazon.de/s?k={}',
    'amnl':        'https://www.amazon.nl/s?k={}',
    'eb':          'https://www.ebay.ie/sch/i.html?_from=R40&_nkw={}&_sacat=0&LH_TitleDesc=0&rt=nc&LH_PrefLoc=3',
    'adverts':     'https://www.adverts.ie/for-sale/q_{}/', # adverts / donedeal
    'donedeal':    'https://www.donedeal.ie/all?words={}',
    'ali':         'https://www.aliexpress.com/wholesale?catId=0&initiative_id=SB_20220502145726&isPremium=y&SearchText={}&spm=a2g0o.productlist.1000002.0',
    'fbmarket':    'https://www.facebook.com/marketplace/104038149633202/search/?query={}',
    'DEFAULT':     'https://chat.openai.com/search?q={}',
}
c.aliases = {
    'gp':                   'open -t http://127.0.0.1:4000',
    'gr':                   'open -t https://feedbin.com/',
    'pdf':                  'print --pdf',
    'dict':                 'spawn --userscript ~/.config/qutebrowser/userscripts/dict',
    'bk':                   'spawn --userscript ~/.config/qutebrowser/userscripts/bukuadd',
    'qbx':                  'spawn qb x {url}',
    'firefox':              'spawn --userscript ~/.config/qutebrowser/userscripts/firefox --new-window {url}',
    'ff':                   'firefox',
    'chrome':               'spawn --userscript ~/.config/qutebrowser/userscripts/chrome --new-window {url}',
    'gc':                   'spawn --userscript ~/.config/qutebrowser/userscripts/chrome --new-window {url}',
    'grease-page-reload':   'greasemonkey-reload ;; reload',
    'oil':                  'spawn st -c flst-buku1 oil-search',
    'buku':                 'spawn st -c flst-buku1 oil-search',
    'us_echo':              'spawn --userscript ~/.config/qutebrowser/userscripts/echo',
    'colcycle':             'config-cycle content.user_stylesheets ' + COLORS_BLACKX + '""',
    'colblack':             'set content.user_stylesheets ' + COLORS_BLACKX,
    'dread-enable':         'spawn --userscript darkreader.py enable domain',
    'dread-disable':        'spawn --userscript darkreader.py disable domain',
    'darkreader':           'spawn --userscript darkreader.py',
    'mpvq':                 'spawn xdotool key space ;; spawn --userscript mpv.qt {url}',
    'mpvh':                 'hint links spawn --userscript view_in_mpv {hint-url}',
    'mpv':                  'spawn --userscript view_in_mpv {url}',
    'ytdl':                 'spawn yt-dlp {url}', # youtube-dl
    'ytdlx':                'spawn yt-dlp -x {url}',
    'doi.sci':              'hint links userscript ~/.config/qutebrowser/userscripts/doi',
    'doi.unp':              'spawn --userscript unpaywall', # doi unpwaywal
    'ses-go':               'cmd-set-text -s :spawn --userscript tab-manager.py ' + SESSION_DIR,
    'ses-open':             'spawn --userscript tab-manager.py ' + SESSION_DIR + ' open -f ',
    'ses-restore':          'spawn --userscript tab-manager.py ' + SESSION_DIR + ' restore -f ',
    'ses-Restore':          'spawn --userscript tab-manager.py ' + SESSION_DIR + ' restore -c -f  ',
    'ses-save':             'spawn --userscript tab-manager.py ' + SESSION_DIR + ' save-all -o -f ',
    'ses-savet':            'spawn --userscript tab-manager.py ' + SESSION_DIR + ' save -f ',
    'ses-delete':           'spawn --userscript tab-manager.py ' + SESSION_DIR + ' delete -f ',
    'ses-ls':               'spawn --userscript tab-manager.py ' + SESSION_DIR + ' help ',
    'sg':                   'ses-go',
    'so':                   'ses-open',
    'sr':                   'ses-restore',
    'sR':                   'ses-restore',
    'ss':                   'ses-save',
    'st':                   'ses-savet',
    'sd':                   'ses-delete',
    'sl':                   'ses-ls',
    'qbo':                  'open -t',# ;;' cmd-set-text -s :open -t'
    'cfg':                  'config-source',
    'gmr':                  'greasemonkey-reload',
    'read':                 'spawn --userscript readability',
    'gitclone':             'spawn --userscript gitclone',
    'download-js':          'spawn -u jsdownload',
    'download-open':        'spawn -u open_download',
    'ytdlp-hint':           'hint links spawn yt-dlp {hint-url}',
    'ytdlp':                'spawn yt-dlp {url}',
    'read-dark':            "cmd-set-text -s :darkreader enable '{url}*'",
    'read-dark-disable':    "cmd-set-text -s :darkreader disable '{url}*'",
    'cycle-ui-bars':        'config-cycle statusbar.show always in-mode ;; config-cycle tabs.show always switching',
    'cycle-ui-statusbar':   'config-cycle statusbar.show always in-mode',
    'cycle-tabs-show':      'config-cycle tabs.show always switching',
}
c.aliases.update({
    # for daemon mode script
    'recycle':  'quit --save _recycle',
    'restart':  'quit --save _restart',
    'shutdown': 'quit --save _shutdown',
})

config.unbind = {
    'normal': {
         'gb',
         'b',
         'm',
         'q',
         '<Ctrl-B>'
    }
}
c.bindings.commands = {
    'normal': {
        ';f':                  'firefox',
        ';c':                  'chrome',
        ';x':                  'qbx',
        ';r':                  'reload',
        ';yx':                 'spawn yt-dlp -x {url}', # make alias
        ';t':                  'hint links spawn transmission-remote -a {hint-url}', # tors
        ';T':                  'hint -r links spawn transmission-remote -a {hint-url}', #todo: make alias first, then set bind to alias
        'gd':                  'hint links spawn -u ~/.config/qutebrowser/userscripts/doi', #todo: make alias first, then set bind to alias
        'gu':                  'spawn --userscript unpaywall', #todo: make alias first, then set bind to alias
        'gz':                  'spawn --userscript qute-zotero', #todo: make alias first, then set bind to alias
        'gb':                  'spawn --userscript getbib', #todo: make alias first, then set bind to alias
        '<Ctrl-k>':            'tab-move +',
        '<Ctrl-j>':            'tab-move -',
        'P':                   'back',
        'o':                   'set statusbar.show always;; clear-messages;; cmd-set-text -s :open',
        'O':                   'set statusbar.show always;; clear-messages;; cmd-set-text -s :open -t',
        't':                   'set statusbar.show always;; clear-messages;; cmd-set-text -s :open -t',
        ':':                   'set statusbar.show always;; clear-messages;; cmd-set-text :',
        '/':                   'set statusbar.show always;; clear-messages;; cmd-set-text /',
        'V':                   'set statusbar.show always;; mode-enter caret ;; selection-toggle --line',
        'v':                   'set statusbar.show always;; mode-enter caret',
        'i':                   'set statusbar.show always;; mode-enter insert',
        'f':                   'set statusbar.show always;; hint',
        '<Ctrl-v>':            'set statusbar.show always;; mode-enter passthrough',
        '`':                   'set statusbar.show always;; mode-enter set_mark',
        "'":                   'set statusbar.show always;; mode-enter jump_mark',
        '<Ctrl-m>':            'cmd-set-text -s :quickmark-save',
        'B':                   'oil',
        'b':                   'cmd-set-text -s :bk',
        'se':                  ':cmd-set-text -s :session-load',
        'sw':                  ':cmd-set-text -s :session-save',
        'sr':                  ':cmd-set-text -s :session-delete',
        '<Alt-Shift-k>':       'zoom-in',
        '<Alt-Shift-j>':       'zoom-out',
        '<z><i>':              'spawn --userscript qute-pass',
        '<z><u>':              'spawn --userscript qute-pass --username-only',
        '<z><p>':              'spawn --userscript qute-pass --password-only',
        '<z><o>':              'spawn --userscript qute-pass --otp-only',
    },
    'caret': {
        'c':                   'mode-enter normal;; set statusbar.show never',
        '<Escape>':            'mode-leave;;        set statusbar.show never',
    },
    'passthrough': {
        '<Escape>':             'mode-leave;;        set statusbar.show never',
    },
    'insert': {
        '<Escape>':            'mode-leave;;        set statusbar.show never',
        '<z><i>':              'spawn --userscript qute-pass',
        '<z><u>':              'spawn --userscript qute-pass --username-only',
        '<z><p>':              'spawn --userscript qute-pass --password-only',
        '<z><o>':              'spawn --userscript qute-pass --otp-only',
    },
    'hint': {
        '<Escape>':            'mode-leave;;        set statusbar.show never',
    },
    'command': {
        '<Escape>':            'mode-leave;;        set statusbar.show never',
        '<Return>':            'command-accept;;    set statusbar.show never',
    },
}
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=python:
