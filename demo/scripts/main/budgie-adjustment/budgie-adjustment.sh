#!/usr/bin/env bash


#set -e




##
## ## Link
##
## * https://github.com/samwhelp/solus-budgie-adjustment/blob/main/demo/scripts/main/budgie-adjustment/budgie-adjustment.sh
## * https://raw.githubusercontent.com/samwhelp/solus-budgie-adjustment/refs/heads/main/demo/scripts/main/budgie-adjustment/budgie-adjustment.sh
##




##
## ## Budgie / Config / Mouse Button Modifier
##

mod_budgie_config_for_mouse_button_modifier () {


	##
	## ## Disable Super_L Open Menu
	##

	gsettings set org.gnome.mutter overlay-key ''


	##
	## ## Mouse Button Modifier
	##

	gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "'<Super>'"

	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true


	return 0
}




##
## ## Budgie / Config / Keybind
##

mod_budgie_config_for_keybind_main () {


	##
	## ## Fix
	##


	##
	## ## Application / Launcher
	##

	gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F1']"

	gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Alt>F2']"


	##
	## ## Window
	##

	gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

	gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>w']"

	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f']"

	gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"

	gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Super>e']"

	gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>r']"


	##
	## ## Window / Switch
	##

	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super>a']"

	gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>s']"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Alt>Escape', '<Super>Left']"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>Escape', '<Super>Right']"


	##
	## ## Workspace / Switch
	##

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a', '<Alt>Left']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s', '<Alt>Right']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Alt>z']"


	##
	## ## Overview / Switch
	##

	## > None Overview


	##
	## ## Window / Tiling Move
	##

	gsettings set org.gnome.desktop.wm.keybindings maximize "['<Control><Super>Up']"

	gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Control><Super>Down']"

	gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Control><Super>Left']"

	gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Control><Super>Right']"


	##
	## ## Screenshot
	##

	gsettings set com.solus-project.budgie-wm take-full-screenshot "['Print']"


	##
	## ## Screenshot / Window
	##

	gsettings set com.solus-project.budgie-wm take-window-screenshot "['<Super>Print']"


	##
	## ## Screenshot / Area
	##

	gsettings set com.solus-project.budgie-wm take-region-screenshot "['<Ctrl>Print']"


	return 0
}


mod_budgie_config_for_keybind_custom () {


	##
	## ## Clear Old
	##

	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/




	##
	## ## Keybind Item
	##


	## ### Logout
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/name "'System_Logout'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/command "'budgie-session-quit --logout'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/binding "'<Shift><Alt>x'"


	## ### Shutdown
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/name "'System_Shutdown'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/command "'budgie-session-quit --power-off'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/binding "'<Shift><Alt>z'"


	## ### System Settings
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/name "'Control_Center'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/command "'budgie-control-center'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/binding "'<Shift><Alt>s'"


	## ### Terminal
	#dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name "'Terminal'"
	#dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command "'xfce4-terminal'"
	#dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding "'<Alt>Return'"


	## ### Terminal-1
	#dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/name "'Terminal-1'"
	#dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/command "'xfce4-terminal'"
	#dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/binding "'<Shift><Alt>a'"


	## ### Terminal
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name "'Terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command "'gnome-terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding "'<Alt>Return'"


	## ### Terminal-1
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/name "'Terminal-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/command "'gnome-terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/binding "'<Shift><Alt>a'"


	## ### File Manager
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/name "'File_Manager'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/command "'nemo'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/binding "'<Shift><Alt>f'"


	## ### File Manager 1
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/name "'File_Manager-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/command "'thunar'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/binding "'<Shift><Alt>g'"


	## ### Text Editor
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/name "'Text_Editor'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/command "'gedit'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/binding "'<Shift><Alt>e'"


	## ### Web Browser
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/name "'Web_Browser'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/command "'firefox --new-tab about:blank'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/binding "'<Shift><Alt>b'"




	##
	## ## Custom Keybindings
	##

	#gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/']"

	gsettings set org.buddiesofbudgie.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/']"




	return 0
}




##
## ## Budgie / Config / Workspace
##

mod_budgie_config_for_workspace () {


	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5

	gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"




	gsettings set org.gnome.mutter dynamic-workspaces false




	#gsettings set org.gnome.shell.overrides dynamic-workspaces false




	return 0
}

mod_budgie_config_for_empty_switch_windows () {


	gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-group "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-panels "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]"








	gsettings set org.gnome.desktop.wm.keybindings cycle-group "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-panels "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "[]"




	return 0
}

mod_budgie_config_for_system_config_quick () {


	gsettings set com.solus-project.budgie-wm toggle-raven "['<Super>m']"

	gsettings set com.solus-project.budgie-wm toggle-notifications "['<Super>n']"

	gsettings set com.solus-project.budgie-wm clear-notifications "['<Super>b']"


	return 0
}

mod_budgie_config_for_system_config_leave () {


	gsettings set com.solus-project.budgie-wm show-power-dialog "['<Control><Alt>z']"


	return 0
}




##
## ## Tool / Tilix / Config
##

mod_tool_tilix_config () {


	gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-normal '<Ctrl>0'

	gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-out '<Ctrl>minus'

	gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-in '<Ctrl>equal'


	return 0
}




##
## ## Tool / Nemo / Config
##

mod_tool_nemo_config () {


	gsettings set org.nemo.preferences click-policy 'double'

	gsettings set org.nemo.preferences show-hidden-files true

	gsettings set org.nemo.preferences ignore-view-metadata true

	gsettings set org.nemo.preferences default-folder-viewer 'list-view'

	gsettings set org.nemo.desktop font 'Sans 12'




	gsettings set org.nemo.preferences show-open-in-terminal-toolbar true




	#return 0




	gsettings set org.gtk.Settings.FileChooser show-hidden true

	gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true


	return 0
}




##
## ## Tool / Gedit / Config
##

mod_tool_gedit_config () {


	gsettings set org.gnome.gedit.preferences.editor auto-indent true

	gsettings set org.gnome.gedit.preferences.editor auto-save false

	gsettings set org.gnome.gedit.preferences.editor auto-save-interval 10

	gsettings set org.gnome.gedit.preferences.editor background-pattern 'none'

	gsettings set org.gnome.gedit.preferences.editor bracket-matching true

	gsettings set org.gnome.gedit.preferences.editor create-backup-copy false

	gsettings set org.gnome.gedit.preferences.editor display-line-numbers true

	gsettings set org.gnome.gedit.preferences.editor display-right-margin true

	gsettings set org.gnome.gedit.preferences.editor editor-font 'Monospace 14'

	gsettings set org.gnome.gedit.preferences.editor ensure-trailing-newline true

	gsettings set org.gnome.gedit.preferences.editor highlight-current-line true

	gsettings set org.gnome.gedit.preferences.editor insert-spaces false

	gsettings set org.gnome.gedit.preferences.editor max-undo-actions 2000

	gsettings set org.gnome.gedit.preferences.editor restore-cursor-position true

	gsettings set org.gnome.gedit.preferences.editor right-margin-position 80

	gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'

	gsettings set org.gnome.gedit.preferences.editor search-highlighting true

	gsettings set org.gnome.gedit.preferences.editor smart-home-end 'after'

	gsettings set org.gnome.gedit.preferences.editor syntax-highlighting true

	gsettings set org.gnome.gedit.preferences.editor tabs-size 4

	gsettings set org.gnome.gedit.preferences.editor use-default-font false

	gsettings set org.gnome.gedit.preferences.editor wrap-last-split-mode 'word'

	gsettings set org.gnome.gedit.preferences.editor wrap-mode 'word'


	return 0
}




##
## ## Budgie / Config
##

mod_budgie_config () {


	mod_budgie_config_for_empty_switch_windows




	mod_budgie_config_for_mouse_button_modifier

	mod_budgie_config_for_keybind_main

	mod_budgie_config_for_keybind_custom

	mod_budgie_config_for_workspace




	mod_budgie_config_for_system_config_quick

	mod_budgie_config_for_system_config_leave



	return 0
}

mod_tool_config () {

	#mod_tool_tilix_config

	mod_tool_nemo_config

	mod_tool_gedit_config


	return 0
}

mod_config_portal () {


	echo
	echo "##"
	echo "## ## Budgie Config / Adjustment / Start"
	echo "##"
	echo




	mod_budgie_config

	mod_tool_config



	echo
	echo "##"
	echo "## ## Budgie Config / Adjustment / Done"
	echo "##"
	echo


	return 0
}




##
## ## Main
##

__main__ () {

	mod_config_portal

	return 0
}

__main__ "${@}"
