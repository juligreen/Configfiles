# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

# [Global modemap] Change modifier keys as in xmodmap
define_modmap({
    Key.CAPSLOCK: Key.LEFT_CTRL,
})

# [Conditional modmap] Change modifier keys in certain applications
# define_conditional_modmap(re.compile(r'Emacs'), {
#     Key.RIGHT_CTRL: Key.ESC,
# })

# [Multipurpose modmap] Give a key two meanings. A normal key when pressed and
# released, and a modifier key when held down with another key. See Xcape,
# Carabiner and caps2esc for ideas and concept.
define_multipurpose_modmap(
    # Enter is enter when pressed and released. Control when held down.
    {Key.ENTER: [Key.ENTER, Key.RIGHT_CTRL]}

    # Capslock is escape when pressed and released. Control when held down.
    # Key.CAPSLOCK: [Key.ESC, Key.LEFT_CTRL]}
    # To use this example, you can't remap capslock with define_modmap.
)


# Keybindings for Firefox/Chrome
define_keymap(re.compile("Brave-browser|Firefox|Google-chrome"), {
    # Ctrl+Alt+j/k to switch next/previous tab
    K("C-Shift-dot"): K("C-TAB"),
    K("C-Shift-comma"): K("C-Shift-TAB"),
    K("C-Shift-w"): K("C-w"),
    K("C-Shift-c"): K("C-c"),
}, "Firefox and Chrome")

# Emacs-like keybindings in non-Emacs applications
define_keymap(lambda wm_class: wm_class not in ("Emacs", "Zathura", "kitty", "Alacritty",  "scrcpy", "moonlight", "Virt-manager", "mpv", "jetbrains-idea-ce", "jetbrains-idea", "Blender", "EtG.x86_64"), {
    # Cursor
    K("C-b"): with_mark(K("left")),
    K("C-M-b"): K("C-b"),
    K("C-f"): with_mark(K("right")),
    K("C-M-f"): K("C-f"),
    K("C-p"): with_mark(K("up")),
    K("C-n"): with_mark(K("down")),
    K("C-h"): with_mark(K("backspace")),
    # Forward/Backward word
    K("M-b"): with_mark(K("C-left")),
    K("M-f"): with_mark(K("C-right")),
    K("M-Shift-f"): K("M-f"),
    # Beginning/End of line
    K("C-a"): with_mark(K("home")),
    K("C-M-a"): with_mark(K("C-a")),
    K("C-e"): with_mark(K("end")),
    K("C-M-e"): K("C-e"),
    # Page up/down
    # K("M-v"): with_mark(K("page_up")),
    # K("C-v"): with_mark(K("page_down")),
    # Beginning/End of file
    K("M-Shift-comma"): with_mark(K("C-home")),
    K("M-Shift-dot"): with_mark(K("C-end")),
    # Newline
    K("C-m"): K("enter"),
    K("C-M-m"): K("C-m"),
    K("C-Shift-m"): K("Shift-enter"),
    K("C-j"): K("enter"),
    K("C-o"): [K("enter"), K("left")],
    # Copy
    K("C-w"): [K("C-backspace"), set_mark(False)],
    K("C-M-w"): K("C-w"),
    K("M-w"): [K("C-c"), set_mark(False)],
    # Delete
    K("C-d"): [K("delete"), set_mark(False)],
    K("C-M-d"): [K("C-d"), set_mark(False)],
    K("M-d"): [K("C-delete"), set_mark(False)],
    # Kill line
    K("C-k"): [K("Shift-end"), K("delete"), set_mark(False)],
    K("C-Super-k"): K("C-k"),
    # Undo
    K("C-slash"): [K("C-z"), set_mark(False)],
    K("C-Shift-ro"): K("C-z"),
    # Mark
    K("C-space"): set_mark(True),
    K("C-M-space"): with_or_set_mark(K("C-right")),
    K("M-Shift-key_5"): K("C-h"),
    # Cancel
    K("C-g"): [K("esc"), set_mark(False)],
    K("C-left_brace"): [K("esc"), set_mark(False)],
    # Escape
    K("C-q"): escape_next_key,
    # Escape-key
    # K("C-["): K("esc")
    # C-x YYY
    # K("C-x"): {
    #     # C-x h (select all)
    #     K("h"): [K("C-home"), K("C-a"), set_mark(True)],
    #     # C-x C-f (open)
    #     K("C-f"): K("C-o"),
    #     # C-x C-s (save)
    #     K("C-s"): K("C-s"),
    #     # C-x k (kill tab)
    #     K("k"): K("C-f4"),
    #     # C-x C-c (exit)
    #     K("C-c"): K("C-q"),
    #     # cancel
    #     K("C-g"): pass_through_key,
    #     # C-x u (undo)
    #     K("u"): [K("C-z"), set_mark(False)],
    # }
}, "Emacs-like keys")


