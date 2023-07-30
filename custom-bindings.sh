#!/bin/bash
##############################################################################
#            __              __  ___  ___  __   ___    __                    #
#           /__`  |\/|  /\  |__)  |  |__  |__) |__  | /__` |__|              #
#           .__/  |  | /~~\ |  \  |  |___ |  \ |    | .__/ |  |              #
#                                                                            #
##############################################################################
# Custom keybindings script for Pop!_shell, loosely based on i3 and Regolith #
##############################################################################
# WARNING: This script will change your gnome keybindings. If you are not    #
# using Pop!_shell, it will be useless.                                      #
# To reverse the effects of this, you can rest keybindings in the settings   #
# application.                                                               #
##############################################################################

# First Let's name our vim keys to make things more readable later
left="n"
down="e"
up="u"
right="i"

# Define the dconf branches
KEYS_GNOME_WM=/org/gnome/desktop/wm/keybindings
KEYS_GNOME_SHELL=/org/gnome/shell/keybindings
KEYS_MUTTER=/org/gnome/mutter/keybindings
KEYS_MEDIA=/org/gnome/settings-daemon/plugins/media-keys
KEYS_POP=/org/gnome/shell/extensions/pop-shell

# Disable incompatible shortcuts and conflicting shortcuts
dconf write /org/gnome/mutter/wayland/keybindings/restore-shortcuts "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-1 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-2 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-3 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-4 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-5 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-6 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-7 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-8 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-9 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-10 "@as []"
dconf write ${KEYS_GNOME_SHELL}/open-application-menu "@as []"
dconf write ${KEYS_MEDIA}/rotate-video-lock-static "@as []"
dconf write ${KEYS_MUTTER}/toggle-tiled-left "@as []"
dconf write ${KEYS_MUTTER}/toggle-tiled-right "@as []"
dconf write ${KEYS_GNOME_WM}/minimize "@as []"

######################################
#                                    #
# Change Pop!_shell default bindings #
#                                    #
######################################

dconf write ${KEYS_POP}/focus-left "['<Super>Left', '<Super>${left}']"
dconf write ${KEYS_POP}/focus-right "['<Super>Right', '<Super>${right}']"
dconf write ${KEYS_POP}/focus-up "['<Super>Up', '<Super>${up}']"
dconf write ${KEYS_POP}/focus-down "['<Super>Down', '<Super>${down}']"

dconf write ${KEYS_POP}/tile-move-left-global "['<Super><Shift>Left', '<Super><Shift>${left}']"
dconf write ${KEYS_POP}/tile-move-right-global "['<Super><Shift>Right', '<Super><Shift>${right}']"
dconf write ${KEYS_POP}/tile-move-up-global "['<Super><Shift>Up', '<Super><Shift>${up}']"
dconf write ${KEYS_POP}/tile-move-down-global "['<Super><Shift>Down', '<Super><Shift>${down}']"

dconf write ${KEYS_POP}/toggle-stacking-global "['<Super>s']"

# Toggle maximization state
dconf write ${KEYS_GNOME_WM}/toggle-maximized "['<Super>m']"
# Toggle floating window
dconf write ${KEYS_POP}/toggle-floating "['<Super>f']"

####################################
# Tile Adjustment mode keybindings #
#
# Enter/Exit tile adjustment mode
dconf write ${KEYS_POP}/tile-enter "['<Super>r']"
dconf write ${KEYS_POP}/tile-accept "['Return']"
dconf write ${KEYS_POP}/tile-reject "['Escape']"

# Move tiles
dconf write ${KEYS_POP}/tile-move-left "['<Super>Left', '<Super>${left}']"
dconf write ${KEYS_POP}/tile-move-right "['<Super>Right', '<Super>${right}']"
dconf write ${KEYS_POP}/tile-move-up "['<Super>Up', '<Super>${up}']"
dconf write ${KEYS_POP}/tile-move-down "['<Super>Down', '<Super>${down}']"

# Resize Tiles
dconf write ${KEYS_POP}/tile-resize-left "['<Primary><Super>Left', '<Primary><Super>${left}']"
dconf write ${KEYS_POP}/tile-resize-right "['<Primary><Super>Right', '<Primary><Super>${right}']"
dconf write ${KEYS_POP}/tile-resize-up "['<Primary><Super>Up', '<Primary><Super>${up}']"
dconf write ${KEYS_POP}/tile-resize-down "['<Primary><Super>Down', '<Primary><Super>${down}']"
# Select tiles
dconf write ${KEYS_POP}/tile-swap-left "['<Super><Shift>Left', '<Super><Shift>${left}']"
dconf write ${KEYS_POP}/tile-swap-right "['<Super><Shift>Right', '<Super><Shift>${right}']"
dconf write ${KEYS_POP}/tile-swap-up "['<Super><Shift>Up', '<[Shift]>${up}']"
dconf write ${KEYS_POP}/tile-swap-down "['<Super><Shift>Down', '<Super><Shift>${down}']"
#
#  end of tile adjustment mode bindings #
#########################################

dconf write ${KEYS_POP}/show-title "false"

# Various bindings and launchers
# Lock screen
dconf write ${KEYS_MEDIA}/screensaver "['']"
# Open Files
dconf write ${KEYS_MEDIA}/home "['']"
# Launch email client
dconf write ${KEYS_MEDIA}/email "['']"
# Launch terminal
dconf write ${KEYS_MEDIA}/terminal "['']"
# Launch web browser
dconf write ${KEYS_MEDIA}/www "['']"
# Close Window
dconf write ${KEYS_GNOME_WM}/close "['<Super>w']"

# Various default settings (without keybindings)
# Hide titles
dconf write ${KEYS_POP}/show-title "false"

dconf write ${KEYS_POP}/activate-launcher "['']"
