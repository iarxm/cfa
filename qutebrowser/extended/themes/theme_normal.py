import os

from extended.context import build_context
from extended.themes.preset_normal import apply


apply(c, config, build_context(os.getenv("QUTE_PROF") or "default"))
