import os
from dataclasses import dataclass
from pathlib import Path


@dataclass(frozen=True)
class Context:
    profile: str
    home: str
    config_dir: str
    extended_dir: str
    tooltip_stylesheet: str
    homepage_blackhole: str
    black_web_stylesheet: str
    window_elements_stylesheet: str
    blocked_hosts_local: str
    session_dir: str


def _with_trailing_slash(path: Path) -> str:
    return f"{path}/"


def build_context(profile: str) -> Context:
    home = Path(os.environ["HOME"]).expanduser()
    config_dir = Path(__file__).resolve().parent.parent
    extended_dir = config_dir / "extended"

    return Context(
        profile=profile,
        home=str(home),
        config_dir=str(config_dir),
        extended_dir=str(extended_dir),
        tooltip_stylesheet=str(home / ".config/qutebrowser/qsettings/fix-tooltip.qss"),
        homepage_blackhole=f"file://{extended_dir / 'homepage/index-blackhole.html'}",
        black_web_stylesheet=str(extended_dir / "styles/blackblack/black-all-sites.css"),
        window_elements_stylesheet=str(extended_dir / "styles/window-user-styles.css"),
        blocked_hosts_local=str(home / ".config/qutebrowser/blocked-hosts"),
        session_dir=_with_trailing_slash(home / ".local/share/qutebrowser/sessions/a-tabmanager"),
    )
