# colors - ===============================================
#c.url.default_page = 'file://{home_dir}/.config/qutebrowser/ui/a.hm/index.html'
#c.url.start_pages = 'file://{home_dir}/.config/qutebrowser/ui/a.hm/index.html'
# ux ==================================
c.zoom.default = "100%"
# colors - ui elements ==================
# completion
c.colors.completion.fg = "#899CA1"
c.colors.completion.category.fg = "#F2F2F2"
c.colors.completion.category.bg = "black"
c.colors.completion.item.selected.fg = "white"
c.colors.completion.item.selected.match.fg = "#0080FF"
c.colors.completion.item.selected.bg = "#333333"
c.colors.completion.item.selected.border.top = "#333333"
c.colors.completion.item.selected.border.bottom = "#333333"
c.colors.completion.match.fg = "#66FFFF"
# statusbar
c.colors.statusbar.normal.fg = "#899CA1"
c.colors.statusbar.normal.bg = "#000000"
c.colors.statusbar.insert.fg = "#899CA1"
c.colors.statusbar.insert.bg = "#000000"
c.colors.statusbar.command.bg = "#000000"
c.colors.statusbar.command.fg = "#F0F0F0"
c.colors.statusbar.caret.bg = "#5E468C"
c.colors.statusbar.caret.selection.fg = "white"
c.colors.statusbar.progress.bg = "#333333"
c.colors.statusbar.passthrough.bg = "#4779B3"
c.colors.statusbar.url.fg = c.colors.statusbar.normal.fg
c.colors.statusbar.url.success.http.fg = "#899CA1"
c.colors.statusbar.url.success.https.fg = "#53A6A6"
c.colors.statusbar.url.error.fg = "#8A2F58"
c.colors.statusbar.url.warn.fg = "#914E89"
c.colors.statusbar.url.hover.fg = "#2B7694"
# tabs
c.colors.tabs.bar.bg = "#222222"
c.colors.tabs.even.fg = "#899CA1"
c.colors.tabs.even.bg = "#222222"
c.colors.tabs.odd.fg = "#899CA1"
c.colors.tabs.odd.bg = "#222222"
c.colors.tabs.selected.even.fg = "white"
c.colors.tabs.selected.even.bg = "#222222"
c.colors.tabs.selected.odd.fg = "white"
c.colors.tabs.selected.odd.bg = "#222222"
c.colors.tabs.indicator.start = "#222222"
c.colors.tabs.indicator.stop = "#222222"
c.colors.tabs.indicator.error = "#8A2F58"
# downloads
c.colors.downloads.start.fg = "black"
c.colors.downloads.start.bg = "#BFBFBF"
c.colors.downloads.stop.fg = "black"
c.colors.downloads.stop.bg = "#F0F0F0"
# hints
c.colors.hints.bg = "#CCCCCC"
c.colors.hints.match.fg = "#000"
# messages
c.colors.messages.error.bg = "#8A2F58"
c.colors.messages.error.border = "#8A2F58"
c.colors.messages.warning.bg = "#BF85CC"
c.colors.messages.warning.border = c.colors.messages.warning.bg
c.colors.messages.info.bg = "#333333"
# prompts
c.colors.prompts.fg = "#333333"
c.colors.prompts.bg = "#000000"
c.colors.prompts.selected.bg = "#4779B3"
c.colors.keyhint.fg = "#FFFFFF"
c.colors.keyhint.suffix.fg = "#FFFF00"
c.colors.keyhint.bg = "rgba(0, 0, 0, 80%)"
#"#DDDDDD"
#c.colors.statusbar.insert.bg = "#222222"
#"#222222"
# fonts ================================
c.fonts.default_family = ["Source Sans Pro", "Noto Sans Mono", "DejaVu Sans Mono", "Liberation Mono"]
c.fonts.tabs.selected = "10pt Source Sans Pro"
c.fonts.statusbar = "15pt Sourc Sans Pro"
c.fonts.hints = "18pt DejaVu Sans Mono"
c.fonts.messages.info = "14pt Noto Sans Mono"
# fonts =================================
c.fonts.tabs.unselected = c.fonts.tabs.selected
c.fonts.downloads = c.fonts.statusbar 
c.fonts.prompts = c.fonts.statusbar
c.fonts.keyhint = c.fonts.messages.info
c.fonts.messages.warning = c.fonts.messages.info
c.fonts.messages.error = c.fonts.messages.info
c.fonts.completion.entry = c.fonts.statusbar
c.fonts.completion.category = c.fonts.statusbar

# Xresources Import ===================
import subprocess
def read_xresources(prefix):
    props = {}
    x = subprocess.run(['xrdb', '-query'], capture_output=True, check=True, text=True)
    lines = x.stdout.split('\n')
    for line in filter(lambda l : l.startswith(prefix), lines):
        prop, _, value = line.partition(':\t')
        props[prop] = value
    return props
xresources = read_xresources('*')
c.colors.statusbar.normal.bg = xresources['*.background']

