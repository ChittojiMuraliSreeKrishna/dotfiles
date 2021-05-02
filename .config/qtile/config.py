import os
import re
import socket
import subprocess
from libqtile import qtile
from libqtile.config import Click, Drag, Group, KeyChord, Key, Match, Screen
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook
from libqtile.lazy import lazy
from typing import List

mod = "mod4"
alt = "mod1"
myTerm = "alacritty"
browser = "google-chrome-stable"
menu = "rofi -show drun"
textEditor = "code"
fileManager = "thunar"
videoPlayer = "vlc"
network = "nm-applet"
volume = "volumeicon"
music = "mocicon"
power = "mate-power-manager"

keys = [
        Key([mod], "Return",
        lazy.spawn(myTerm),
        desc = 'launches myTerm'),
        Key([mod], "d",
            lazy.spawn(menu),
            desc = 'launches menu card'),
        Key([mod, "shift"], "r",
            lazy.restart(),
            desc='restart qtile'),
        Key([alt], "F4",
            lazy.window.kill(),
            desc = 'kill active window'),
        Key([alt], "Escape",
            lazy.shutdown(),
            desc = 'shutdown qtile'),
        Key([mod], "Left",
            lazy.layout.left(),
            desc = 'focus left'),
        Key([mod], "Right",
            lazy.layout.right(),
            desc = 'focus right'),
        Key([mod], "Up",
            lazy.layout.up(),
            desc = 'focus up'),
        Key([mod], "Down",
            lazy.layout.down(),
            desc = 'focus down'),
        Key([mod, "shift"], "Left",
            lazy.layout.shuffle_left(),
            desc = 'move window left'),
        Key([mod, "shift"], "Right",
            lazy.layout.shuffle_right(),
            desc = 'move window right'),
        Key([mod, "shift"], "Up",
            lazy.layout.shuffle_up(),
            desc = 'move window up'),
        Key([mod, "shift"], "Down",
            lazy.layout.shuffle_down(),
            desc = 'move window down'),
        Key([alt], "Left",
            lazy.layout.grow_left(),
            desc = 'grow left'),
        Key([alt], "Right",
            lazy.layout.grow_right(),
            desc = 'grow right'),
        Key([alt], "Up",
            lazy.layout.grow_up(),
            desc = 'grow up'),
        Key([alt], "Down",
            lazy.layout.grow_down(),
            desc = 'grow down'),
        Key([alt], "Tab",
                lazy.next_layout(),
                desc= 'toggle between layouts'),
        Key([mod, "control"], "Return",
                lazy.spawn(fileManager),
                desc = 'launch file manger'),
        Key([mod], "F2",
                lazy.spawn(browser),
                desc = 'launch browser'),
        Key([mod, "shift"], "v",
                lazy.spawn(videoPlayer),
                desc = 'launch video player'),
        Key([mod, "shift"], "c",
                lazy.spawn(textEditor)),
        Key([], "XF86AudioRaiseVolume",
                lazy.spawn("amixer sset Master 2%+"),
                desc = 'volume up'),
        Key([], "XF86AudioLowerVolume",
                lazy.spawn("amixer sset Master 2%-"),
                desc = 'volume down'),
        Key([], "XF86AudioMute",
                lazy.spawn("amixer sset Master toggle"),
                desc = 'toggle mute/unmute'),
        Key([], "XF86AudioPlay",
                lazy.spawn("mocp -p"),
                desc = 'mocp start play'),
        Key([], "XF86AudioNext",
                lazy.spawn("mocp --next"),
                desc = 'mocp next song'),
        Key([], "XF86AudioPrev",
                lazy.spawn("mocp --prev"),
                desc = 'mocp prev song'),
        Key([alt], "XF86AudioPlay",
                lazy.spawn("mocp -s"),
                desc = 'mocp stop'),
        Key([mod], "XF86Sleep",
                lazy.spawn(myTerm+" -e poweroff"))
        ]

group_names = [("1.", {'layout': 'ratiotile'}),
                ("2.", {'layout': 'ratiotile'}),
                ("3.", {'layout': 'ratiotile'}),
                ("4.", {'layout': 'ratiotile'}),
                ("5.", {'layout': 'ratiotile'}),
                ("6.", {'layout': 'ratiotile'}),
                ("7.", {'layout': 'ratiotile'}),
                ("8.", {'layout': 'ratiotile'})]

groups = [Group(name, **kwargs) for name, kwargs in group_names]

for i, (name, kwargs) in enumerate(group_names, 1):
    keys.append(Key([mod], str(i), lazy.group[name].toscreen()))
    keys.append(Key([mod, "shift"], str(i), lazy.window.togroup(name)))

layout_theme = {"border_width": 1,
                "margin": 3,
                "border_focus": "00ff00",
                "border_normal": "1D2330"}

layouts = [
        layout.Tile(**layout_theme),
        layout.RatioTile(**layout_theme),
        layout.Stack(**layout_theme),
        layout.Columns(**layout_theme),
        layout.Max(**layout_theme),
        ]

colors = [["#282c34", "#282c34"], # panel background
          ["#3d3f4b", "#434758"], # background for current screen tab
          ["#ffffff", "#ffffff"], # font color for group names
          ["#ff5555", "#ff5555"], # border line color for current tab
          ["#008a00", "#008a00"], # border line color for 'other tabs' and color for 'odd widgets'
          ["#4f76c7", "#4f76c7"], # color for the 'even widgets'
          ["#ecbb00", "#ecbb00"]] # backbround for inactive screens


widget_defaults = dict(
        font= "Sans Mono",
        fontsize= 12,
        padding= 2,
        background= colors[2]
        )
extension_defaults = widget_defaults.copy()

screens = [
        Screen(
            top=bar.Bar(
                [
                    widget.Sep(
                        linewidth = 0,
                        padding = 6,
                        foreground = colors[2],
                        background = colors[5]
                        ),
                    widget.TextBox(
                        text = ' ',
                        background = colors[5],
                        foreground = colors[6],
                        fontsize=20
                        ),
                    widget.Clock(
                        format="%A, %B %d - %H:%M ",
                        foreground = colors[2],
                        background=colors[5],
                        fontsize = 15),
                    widget.Battery(
                        charge_char="",
                        discharge_char="",
                        empty_char = "",
                        full_char = "Full",
                        format = "{char} {percent:2.0%} {hour:d}:{min:02d}",
                        foreground=colors[2],
                        background=colors[4],
                        low_foreground=colors[0],
                        padding = 5,
                        fontsize = 15
                        ),
                    widget.TextBox(
                        text = '',
                        padding = 3,
                        fontsize = 18,
                        foreground = colors[0],
                        background=colors[6]
                        ),
                    widget.Backlight(
                        background = colors[6],
                        foreground = colors[0],
                        fontsize = 15,
                        backlight_name = 'intel_backlight'
                        ),
                    widget.Systray(
                        background = colors[1],
                        foreground=colors[2],
                        padding=3
                        ),
                    widget.Sep(
                            linewidth = 2,
                            padding = 6,
                            foreground = colors[2],
                            background = colors[0]
                            ),
                    widget.TextBox(
                        text = ':',
                            foreground = colors[3],
                            background = colors[0],
                            fontsize = 18,
                            padding=4
                            ),
                    widget.Moc(
                        background = colors[0],
                        foreground = colors[2],
                        noplay_color = colors[1],
                        play_color=colors[3],
                        update_interval = 0.1
                        ),
                    widget.Spacer(
                        foreground = colors[2],
                        background = colors[0],
                        padding = 0
                        ),
                    widget.CurrentLayout(
                            background = colors[0],
                            foreground = colors[2],
                            fontsize = 16,
                            padding = 5
                            ),
                    widget.Sep(
                        linewidth = 2,
                        padding = 6,
                        foreground = colors[2],
                        background = colors[0]
                        ),
                    widget.GroupBox(
                        fontsize = 16,
                        margin_y = 0,
                        margin_x = 0,
                        padding = 6,
                        borderwidth = 1,
                        active = colors[2],
                        inactive = colors[2],
                        rounded = True,
                        highlight_method = "block",
                        this_current_screen_border = colors[4],
                        this_screen_border = colors[1],
                        other_current_screen_border = colors[0],
                        other_screen_border = colors[0],
                        foreground = colors[2],
                        background = colors[0],
                        disable_drag = True,
                        hide_unused= True
                        ),
                    widget.Sep(
                        linewidth = 0,
                        padding = 6,
                        foreground = colors[2],
                        background = colors[0]
                        ),
                    ],
                24,
                ),
            ),
        ]

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.call([home])


@hook.subscribe.client_new
def client_new(client):
    if client.name == 'vlc':
        client.togroup(8)
