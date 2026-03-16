from typing import Any


def apply(c: Any, config: Any, ctx: Any) -> None:
    del config

    c.colors.webpage.darkmode.enabled = True
    c.colors.webpage.darkmode.policy.images = "never"
    c.colors.webpage.preferred_color_scheme = "dark"
    c.colors.webpage.darkmode.contrast = 0.0
    c.colors.webpage.bg = "black"
    c.content.user_stylesheets = [
        ctx.window_elements_stylesheet,
        ctx.black_web_stylesheet,
    ]
