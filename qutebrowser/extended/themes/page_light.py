from typing import Any


def apply(c: Any, config: Any, ctx: Any) -> None:
    del config

    c.colors.webpage.darkmode.enabled = False
    c.colors.webpage.preferred_color_scheme = "light"
    c.content.user_stylesheets = [ctx.window_elements_stylesheet]
