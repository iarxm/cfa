from typing import Any


def apply(c: Any, config: Any, ctx: Any) -> None:
    c.downloads.location.directory = "~/ai/"
    c.changelog_after_upgrade = "minor"
    c.editor.command = ["st", "-c", "float", "nvim", "-O", "{}"]
    c.spellcheck.languages = ["en-GB"]
    c.prompt.filebrowser = True
    c.new_instance_open_target = "tab-bg"
    c.input.insert_mode.auto_load = True
    c.completion.web_history.max_items = 1000000
    c.completion.cmd_history_max_items = 100000
    c.input.partial_timeout = 2000
    c.messages.timeout = 2000
    c.tabs.background = True
    c.tabs.new_position.related = "last"
    c.session.default_name = "default_restore"
    c.content.webgl = True
    c.content.autoplay = False
    c.content.geolocation = True
    c.content.prefers_reduced_motion = True
    c.content.plugins = False
    c.content.xss_auditing = True
    c.content.cache.appcache = True
    c.content.cache.size = 2147483647
    c.content.blocking.method = "both"
    c.content.blocking.enabled = True
    c.content.notifications.enabled = False
    c.content.cookies.accept = "all"
    c.hints.mode = "letter"
    c.hints.chars = "asdfghklqweruiopzxcvbn"
    c.hints.min_chars = 1
    c.keyhint.blacklist = ["*"]
    c.completion.open_categories = ["quickmarks", "bookmarks", "history"]
    c.scrolling.smooth = True
    c.qt.chromium.low_end_device_mode = "auto"
    c.qt.chromium.process_model = "process-per-site-instance"
    c.qt.workarounds.disable_accelerated_2d_canvas = "always"
    c.qt.args = [
        "ignore-gpu-blacklist",
        "enable-gpu-rasterisation",
        "enable-native-gpu-memory-buffers",
        "num-raster-threads=4",
        "enable-accelerated-video-decode",
        "enable-features=VaapiVideoDecoder",
        "enable-features=WebGPU",
        "enable-oop-rasterization",
        "enable-raw-draw",
        "stylesheet=" + ctx.tooltip_stylesheet,
    ]

    config.set(
        "content.headers.user_agent",
        (
            "Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} "
            "(KHTML, like Gecko) Chrome/110.0.0.0 Safari/{webkit_version} "
            "Edg/110.0.1587.57"
        ),
        "*://www.bing.com/*",
    )

    c.url.default_page = ctx.homepage_blackhole
    c.url.start_pages = ctx.homepage_blackhole
    c.content.blocking.adblock.lists = [
        "https://easylist.to/easylist/easylist.txt",
        "https://easylist.to/easylist/easyprivacy.txt",
        "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
        "https://easylist.to/easylist/fanboy-annoyance.txt",
        "https://secure.fanboy.co.nz/fanboy-annoyance.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
        "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2022.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
    ]
    c.content.blocking.hosts.lists = [
        ctx.blocked_hosts_local,
        "/etc/qutebrowser/blocked-hosts",
        "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts",
        "https://raw.githubusercontent.com/blocklistproject/Lists/master/youtube.txt",
    ]
    c.content.blocking.whitelist = [
        "*://example.com/*",
        "*://surfline.com/*",
        "*://calendar.google.com/*",
    ]
    c.url.searchengines = {
        "DEFAULT": "http://www.google.com/search?hl=en&q={}",
        "gs": "http://scholar.google.ch/scholar?hl=en&q={}",
        "s": "https://sci-hub.se/{}",
        "g": "http://www.google.com/search?hl=en&q={}",
        "gt": "https://translate.google.com/?sl=auto&tl=en&text={}&op=translate",
        "y": "https://www.youtube.com/results?search_query={}",
        "gh": "https://github.com/search?q={}&type=Code",
        "aw": "https://wiki.archlinux.org/?search={}",
        "ap": "https://www.archlinux.org/packages/?sort=&q={}",
        "au": "https://aur.archlinux.org/packages/?O=0&K={}",
        "gm": "https://www.google.com/maps/search/?api=1&query={}",
        "rar": "https://rargb.to/search/?search={}",
        "tpb": "https://ukpiratebay.org/search.php?q={}",
        "amuk": "https://www.amazon.co.uk/s?k={}",
        "amde": "https://www.amazon.de/s?k={}",
        "amnl": "https://www.amazon.nl/s?k={}",
        "eb": (
            "https://www.ebay.ie/sch/i.html?_from=R40&_nkw={}&_sacat=0"
            "&LH_TitleDesc=0&rt=nc&LH_PrefLoc=3"
        ),
    }

    c.aliases = {
        "gp": "open -t http://127.0.0.1:4000",
        "gr": "open -t https://feedbin.com/",
        "pdf": "print --pdf",
        "dict": "spawn --userscript ~/.config/qutebrowser/userscripts/dict",
        "bk": "spawn --userscript ~/.config/qutebrowser/userscripts/bukuadd",
        "qbx": "spawn qb x {url}",
        "firefox": "spawn --userscript ~/.config/qutebrowser/userscripts/firefox --new-window {url}",
        "ff": "firefox",
        "chrome": "spawn --userscript ~/.config/qutebrowser/userscripts/chrome --new-window {url}",
        "gc": "spawn --userscript ~/.config/qutebrowser/userscripts/chrome --new-window {url}",
        "grease-page-reload": "greasemonkey-reload ;; reload",
        "oil": "spawn st -c flst-buku1 oil-search",
        "buku": "spawn st -c flst-buku1 oil-search",
        "us_echo": "spawn --userscript ~/.config/qutebrowser/userscripts/echo",
        "colcycle": "config-cycle content.user_stylesheets " + ctx.black_web_stylesheet + '""',
        "colblack": "set content.user_stylesheets " + ctx.black_web_stylesheet,
        "dread-enable": "spawn --userscript darkreader.py enable domain",
        "dread-disable": "spawn --userscript darkreader.py disable domain",
        "darkreader": "spawn --userscript darkreader.py",
        "mpvq": "spawn xdotool key space ;; spawn --userscript mpv.qt {url}",
        "mpvh": "hint links spawn --userscript view_in_mpv {hint-url}",
        "mpv": "spawn --userscript view_in_mpv {url}",
        "ytdl": "spawn yt-dlp {url}",
        "ytdlx": "spawn yt-dlp -x {url}",
        "doi.sci": "hint links userscript ~/.config/qutebrowser/userscripts/doi",
        "doi.unp": "spawn --userscript unpaywall",
        "ses-go": "cmd-set-text -s :spawn --userscript tab-manager.py " + ctx.session_dir,
        "ses-open": "spawn --userscript tab-manager.py " + ctx.session_dir + " open -f ",
        "ses-restore": "spawn --userscript tab-manager.py " + ctx.session_dir + " restore -f ",
        "ses-Restore": "spawn --userscript tab-manager.py " + ctx.session_dir + " restore -c -f  ",
        "ses-save": "spawn --userscript tab-manager.py " + ctx.session_dir + " save-all -o -f ",
        "ses-savet": "spawn --userscript tab-manager.py " + ctx.session_dir + " save -f ",
        "ses-delete": "spawn --userscript tab-manager.py " + ctx.session_dir + " delete -f ",
        "ses-ls": "spawn --userscript tab-manager.py " + ctx.session_dir + " help ",
        "sg": "ses-go",
        "so": "ses-open",
        "sr": "ses-restore",
        "sR": "ses-restore",
        "ss": "ses-save",
        "st": "ses-savet",
        "sd": "ses-delete",
        "sl": "ses-ls",
        "qbo": "open -t",
        "cfg": "config-source",
        "gmr": "greasemonkey-reload",
        "read": "spawn --userscript readability",
        "gitclone": "spawn --userscript gitclone",
        "download-js": "spawn -u jsdownload",
        "download-open": "spawn -u open_download",
        "ytdlp-hint": "hint links spawn yt-dlp {hint-url}",
        "ytdlp": "spawn yt-dlp {url}",
        "read-dark": "cmd-set-text -s :darkreader enable '{url}*'",
        "read-dark-disable": "cmd-set-text -s :darkreader disable '{url}*'",
        "cycle-ui-bars": (
            "config-cycle statusbar.show always in-mode ;; "
            "config-cycle tabs.show always switching"
        ),
        "cycle-ui-statusbar": "config-cycle statusbar.show always in-mode",
        "cycle-tabs-show": "config-cycle tabs.show always switching",
    }
    c.aliases.update(
        {
            "recycle": "quit --save _recycle",
            "restart": "quit --save _restart",
            "shutdown": "quit --save _shutdown",
        }
    )

    config.unbind = {
        "normal": {
            "gb",
            "b",
            "m",
            "q",
            "<Ctrl-B>",
        }
    }
    c.bindings.commands = {
        "normal": {
            ";f": "firefox",
            ";c": "chrome",
            ";x": "qbx",
            ";r": "reload",
            ";yx": "spawn yt-dlp -x {url}",
            ";t": "hint links spawn transmission-remote -a {hint-url}",
            ";T": "hint -r links spawn transmission-remote -a {hint-url}",
            "gd": "hint links spawn -u ~/.config/qutebrowser/userscripts/doi",
            "gu": "spawn --userscript unpaywall",
            "gz": "spawn --userscript qute-zotero",
            "gb": "spawn --userscript getbib",
            "<Ctrl-k>": "tab-move +",
            "<Ctrl-j>": "tab-move -",
            "P": "back",
            "o": "set statusbar.show always;; clear-messages;; cmd-set-text -s :open",
            "O": "set statusbar.show always;; clear-messages;; cmd-set-text -s :open -t",
            "t": "set statusbar.show always;; clear-messages;; cmd-set-text -s :open -t",
            ":": "set statusbar.show always;; clear-messages;; cmd-set-text :",
            "/": "set statusbar.show always;; clear-messages;; cmd-set-text /",
            "V": "set statusbar.show always;; mode-enter caret ;; selection-toggle --line",
            "v": "set statusbar.show always;; mode-enter caret",
            "i": "set statusbar.show always;; mode-enter insert",
            "f": "set statusbar.show always;; hint",
            "<Ctrl-v>": "set statusbar.show always;; mode-enter passthrough",
            "`": "set statusbar.show always;; mode-enter set_mark",
            "'": "set statusbar.show always;; mode-enter jump_mark",
            "<Ctrl-m>": "cmd-set-text -s :quickmark-save",
            "B": "oil",
            "b": "cmd-set-text -s :bk",
            "se": ":cmd-set-text -s :session-load",
            "sw": ":cmd-set-text -s :session-save",
            "sr": ":cmd-set-text -s :session-delete",
            "<Alt-Shift-k>": "zoom-in",
            "<Alt-Shift-j>": "zoom-out",
            "<z><i>": "spawn --userscript qute-pass",
            "<z><u>": "spawn --userscript qute-pass --username-only",
            "<z><p>": "spawn --userscript qute-pass --password-only",
            "<z><o>": "spawn --userscript qute-pass --otp-only",
        },
        "caret": {
            "c": "mode-enter normal;; set statusbar.show never",
            "<Escape>": "mode-leave;;        set statusbar.show never",
        },
        "passthrough": {
            "<Escape>": "mode-leave;;        set statusbar.show never",
        },
        "insert": {
            "<Escape>": "mode-leave;;        set statusbar.show never",
            "<z><i>": "spawn --userscript qute-pass",
            "<z><u>": "spawn --userscript qute-pass --username-only",
            "<z><p>": "spawn --userscript qute-pass --password-only",
            "<z><o>": "spawn --userscript qute-pass --otp-only",
        },
        "hint": {
            "<Escape>": "mode-leave;;        set statusbar.show never",
        },
        "command": {
            "<Escape>": "mode-leave;;        set statusbar.show never",
            "<Return>": "command-accept;;    set statusbar.show never",
        },
    }
