import os

from extended.context import build_context
from extended.shared import apply as apply_shared
from extended.themes.chrome_black import apply as apply_chrome_black
from extended.themes.layout_guix import apply as apply_layout_guix
from extended.themes.page_dark import apply as apply_page_dark
from extended.themes.page_light import apply as apply_page_light


def preset_black(c, config, ctx) -> None:
    apply_chrome_black(c, config, ctx)
    apply_page_dark(c, config, ctx)
    apply_layout_guix(c, config, ctx)


def preset_normal(c, config, ctx) -> None:
    apply_page_light(c, config, ctx)
    apply_layout_guix(c, config, ctx)


def profile_default(c, config, ctx) -> None:
    preset_black(c, config, ctx)
    c.content.local_content_can_access_remote_urls = True


def profile_mail(c, config, ctx) -> None:
    profile_default(c, config, ctx)


def profile_x(c, config, ctx) -> None:
    preset_normal(c, config, ctx)


def profile_y(c, config, ctx) -> None:
    del c
    del config
    del ctx


PROFILE_REGISTRY = {
    "default": profile_default,
    "mail": profile_mail,
    "x": profile_x,
    "y": profile_y,
}


profile = os.getenv("QUTE_PROF") or "default"
ctx = build_context(profile)

config.load_autoconfig()
apply_shared(c, config, ctx)
PROFILE_REGISTRY.get(profile, profile_default)(c, config, ctx)
