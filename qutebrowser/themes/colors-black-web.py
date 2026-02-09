c.colors.webpage.darkmode.enabled                = True
c.colors.webpage.darkmode.policy.images          = "never"
c.colors.webpage.preferred_color_scheme          = "dark"
c.colors.webpage.darkmode.contrast               = 0.0
c.colors.webpage.bg                              = "black"
import os
HOME                       = os.getenv("HOME")
c.content.user_stylesheets = [ os.getenv('WINDOW_ELEMENTS'), os.getenv('COLORS_BLACKX') ]

