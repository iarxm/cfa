# Qutescripts

- Author:       **palb91**
- License:      **MIT**
- Description:  **A list of personal userscripts for qutebrowser**

---

## Installation

> Copy/link the scripts or directly clone this repository into
> `${XDG_DATA_HOME}/qutebrowser/userscripts`. Then use `:spawn -u --
> scriptfile` in qutebrowser or bind this same command.

---

## Scripts

### domcycle

> `config-cycle` per root domain, not current subdomain
> ([#5408](https://github.com/qutebrowser/qutebrowser/issues/5408))

**dependency:** python-tldextract

```python
# In config.py:
bind('cj', 'spawn -u domcycle content.javascript.enabled')
```

**Note:** The script performs automatically a `reload -f` at the end, it does
not work well when it's added at the end of the binding (`;; reload -f`).


### gitclone

> Clone a git repository directly from qutebrowser.

**dependency:** git

```python
# In config.py:
bind('gc', 'spawn -u -- gitclone')
```

It is possible to run a command after a successful clone. Drop in your
`config.py` the environment variable `QUTE_POST_CLONE`:

```python
# In config.py:
import os
os.environ['QUTE_POST_CLONE'] = 'notify-send "cloned!" "${QUTE_URL}"'
```

**Note:** I use the post hook to automatically add the project directory to my
zsh-z database.


### jsdownload

> Qutescript that perform a normal download on pages and a file download on
> pdfjs

**Note:**
[#1926](https://github.com/qutebrowser/qutebrowser/issues/1916#issuecomment-839841542)

```python
In config.py:
  bind('gd', 'spawn -u jsdownload')
```


### substiqute

> Bash style quick substitution in URL

```python
#In config.py:
bind('^', 'set-cmd-text -s -- :spawn -u -- substiqute')
```

Then in qutebrowser, type either `^str1^str2` (bash habits!) or `^str1 str2`

**Note:** Fun fact, `qutebrowser` doesn't allow to use dead keys, and ^ is a
dead key on my keyboard (I feel sad), but in case anyone appreciate this
shortcut, I let the behavior.
