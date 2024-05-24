#!/bin/bash
##############################################################################
#            __              __  ___  ___  __   ___    __                    #
#           /__`  |\/|  /\  |__)  |  |__  |__) |__  | /__` |__|              #
#           .__/  |  | /~~\ |  \  |  |___ |  \ |    | .__/ |  |              #
#                                                                            #
##############################################################################
# Get tiling gaps                                                            #
##############################################################################

# Define the dconf branches
KEYS_POP=/org/gnome/shell/extensions/pop-shell

# uint32_t g = $(dconf read ${KEYS_POP}/gap-inner) # | cut -c8)
# echo "${g}"
# g=$((g+1))
# echo "${g}"
dconf write ${KEYS_POP}/gap-inner 3
dconf write ${KEYS_POP}/gap-outer 2
