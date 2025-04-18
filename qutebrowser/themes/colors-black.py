c.colors.webpage.darkmode.enabled                = True
c.colors.webpage.darkmode.policy.images          = "never"
c.colors.webpage.preferred_color_scheme          = "dark"
c.colors.webpage.darkmode.contrast               = 0.0
c.colors.completion.category.bg                  = "black"
c.colors.completion.even.bg                      = "black"
c.colors.completion.odd.bg                       = "black"
c.colors.completion.scrollbar.bg                 = "black"
c.colors.statusbar.caret.bg                      = "black"
c.colors.statusbar.normal.bg                     = "black"
c.colors.statusbar.passthrough.bg                = "black"
c.colors.statusbar.insert.bg                     = "black"
c.colors.statusbar.command.bg                    = "black"
c.colors.statusbar.caret.bg                      = "black"
c.colors.statusbar.caret.selection.bg            = "black"
c.colors.statusbar.progress.bg                   = "black"
c.colors.tabs.bar.bg                             = "black"
c.colors.tabs.even.bg                            = "black"
c.colors.tabs.odd.bg                             = "black"
c.colors.tabs.selected.even.bg                   = "black"
c.colors.tabs.selected.odd.bg                    = "black"
c.colors.downloads.start.bg                      = "black"
c.colors.downloads.stop.bg                       = "black"
c.colors.webpage.bg                              = "black"
c.colors.messages.info.bg                        = "black"
c.colors.prompts.bg                              = "black"
c.colors.prompts.border                          = "black"
c.colors.tabs.indicator.start                    = "black"
c.colors.tabs.indicator.stop                     = "black"
c.colors.completion.category.border.bottom       = "black"
c.colors.completion.category.border.top          = "black"
c.colors.hints.bg                                = "rgba(0,0,0,0.6)" #"#CCCCCC"
c.colors.completion.item.selected.border.top     = "black"
c.colors.completion.item.selected.border.bottom  = "black"
# non blacks
c.colors.prompts.selected.bg                     = "#4779B3"
c.colors.statusbar.passthrough.bg                = "#4779B3"
c.colors.messages.error.bg                       = "#8A2F58"
c.colors.messages.error.border                   = "#8A2F58"
c.colors.messages.warning.bg                     = "#BF85CC"
c.colors.messages.warning.border                 = c.colors.messages.warning.bg
c.colors.completion.scrollbar.fg                 = '#999999'
c.colors.completion.item.selected.bg             = "#333333"
c.colors.completion.fg                           = "#899CA1"
c.colors.completion.category.fg                  = "#F2F2F2"
c.colors.completion.item.selected.fg             = "white"
c.colors.completion.item.selected.match.fg       = "#0080FF"
c.colors.completion.match.fg                     = "#66FFFF"
c.colors.statusbar.normal.fg                     = "#899CA1"
c.colors.statusbar.insert.fg                     = "#899CA1"
c.colors.statusbar.command.fg                    = "#F0F0F0"
c.colors.statusbar.caret.selection.fg            = "purple"
c.colors.statusbar.url.fg                        = c.colors.statusbar.normal.fg
c.colors.statusbar.url.success.http.fg           = "#899CA1"
c.colors.statusbar.url.success.https.fg          = "#53A6A6"
c.colors.statusbar.url.error.fg                  = "#8A2F58"
c.colors.statusbar.url.warn.fg                   = "#914E89"
c.colors.statusbar.url.hover.fg                  = "#2B7694"
c.colors.tabs.even.fg                            = "#899CA1"
c.colors.tabs.odd.fg                             = "#899CA1"
c.colors.tabs.selected.even.fg                   = "#c0caf5"
c.colors.tabs.selected.odd.fg                    = "#c0caf5"
c.colors.tabs.indicator.error                    = "#8A2F58"
c.colors.downloads.start.fg                      = "white"
c.colors.downloads.stop.fg                       = "white"
c.colors.hints.fg                                = "orange"
c.colors.hints.match.fg                          = "blue"#"#000"
c.colors.prompts.fg                              = "white" #"#333333"
c.colors.keyhint.fg                              = "#FFFFFF"
c.colors.keyhint.suffix.fg                       = "#FFFF00"
c.colors.keyhint.bg                              = "rgba(0, 0, 0, 80%)"#black?
import os
HOME                       = os.getenv("HOME")
c.content.user_stylesheets = [ os.getenv('WINDOW_ELEMENTS'), os.getenv('COLORS_BLACKX') ]
c.url.default_page         = "file://" + HOME + "/.config/qutebrowser/homepage/index-blackhole.html"
c.url.start_pages          = "file://" + HOME + "/.config/qutebrowser/homepage/index-blackhole.html"
#c.url.default_page         = "file://" + HOME + "/.config/qutebrowser/homepage/index-blank.html"
#c.url.start_pages          = "file://" + HOME + "/.config/qutebrowser/homepage/index-blank.html"
#c.url.default_page         = "file://" + HOME + "/.config/qutebrowser/homepage/index-background.html"
#c.url.start_pages          = "file://" + HOME + "/.config/qutebrowser/homepage/index-background.html"
#c.url.default_page         = "file://" + HOME + "/.config/qutebrowser/homepage/index-clock.html"
#c.url.start_pages          = "file://" + HOME + "/.config/qutebrowser/homepage/index-clock.html"
