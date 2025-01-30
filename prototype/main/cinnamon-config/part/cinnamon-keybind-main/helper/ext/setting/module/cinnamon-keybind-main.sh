

################################################################################
### Head: Setting / Module / Cinnamon / Variable
##

cinnamon_keybind_main_var_init () {

	THE_CINNAMON_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_cinnamon-keybind-main.gschema.override"

	THE_CINNAMON_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_CINNAMON_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_CINNAMON_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_CINNAMON_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

cinnamon_keybind_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: cinnamon_keybind_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Cinnamon / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_CINNAMON_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_CINNAMON_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: cinnamon_keybind_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

cinnamon_keybind_main_var_init
cinnamon_keybind_main_var_dump

##
### Tail: Setting / Module / Cinnamon / Variable
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Portal
##

cinnamon_keybind_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_main_config_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_keybind_main_settings_set_all





	return 0

}


cinnamon_keybind_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo





	return 0

}


cinnamon_keybind_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_keybind_main_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Cinnamon / Portal
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Settings
##

cinnamon_keybind_main_settings_set_all () {


	cinnamon_keybind_main_config_start




	return 0

}

##
### Tail: Setting / Module / Cinnamon / Settings
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Gschema
##

cinnamon_keybind_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_CINNAMON_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_CINNAMON_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"


	return 0

}

##
### Tail: Setting / Module / Cinnamon / Gschema
################################################################################








################################################################################
### Head: cinnamon / config / cinnamon_keybind_main
##

cinnamon_keybind_main_config_start () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_main_config_start"
	util_error_echo "##"
	util_error_echo




	cinnamon_keybind_main_config_for_window

	cinnamon_keybind_main_config_for_workspace

	cinnamon_keybind_main_config_for_menu




	return 0

}

##
### Tail: cinnamon / config / cinnamon_keybind_main
################################################################################




################################################################################
### Head: cinnamon / config / cinnamon_keybind_main / window
##

cinnamon_keybind_main_config_for_window () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_main_config_for_window"
	util_error_echo "##"
	util_error_echo





	return 0

	cinnamon_keybind_main_config_for_window_begin_move

	cinnamon_keybind_main_config_for_window_begin_resize

	cinnamon_keybind_main_config_for_window_to_close

	cinnamon_keybind_main_config_for_window_toggle_fullscreen

	cinnamon_keybind_main_config_for_window_toggle_maximized

	cinnamon_keybind_main_config_for_window_to_minimize

	cinnamon_keybind_main_config_for_window_toggle_shaded

	cinnamon_keybind_main_config_for_window_toggle_show_desktop

	cinnamon_keybind_main_config_for_window_toggle_above

	cinnamon_keybind_main_config_for_window_toggle_on_all_workspaces

	cinnamon_keybind_main_config_for_window_switch_windows

	cinnamon_keybind_main_config_for_window_to_tiling

}

cinnamon_keybind_main_config_for_window_begin_move () {

	## Window / Move
	util_error_echo "gsettings set org.cinnamon.Marco.window-keybindings begin-move '<Super>e'"
	gsettings set org.cinnamon.Marco.window-keybindings begin-move '<Super>e'

}

cinnamon_keybind_main_config_for_window_begin_resize () {

	## Window / Resize
	util_error_echo "gsettings set org.cinnamon.Marco.window-keybindings begin-resize '<Super>r'"
	gsettings set org.cinnamon.Marco.window-keybindings begin-resize '<Super>r'

}

cinnamon_keybind_main_config_for_window_to_close () {

	## Window / Close
	util_error_echo "gsettings set org.cinnamon.Marco.window-keybindings close '<Super>q'"
	gsettings set org.cinnamon.Marco.window-keybindings close '<Super>q'

}

cinnamon_keybind_main_config_for_window_toggle_fullscreen () {

	## Window / Fullscreen
	util_error_echo "gsettings set org.cinnamon.Marco.window-keybindings toggle-fullscreen '<Super>f'"
	gsettings set org.cinnamon.Marco.window-keybindings toggle-fullscreen '<Super>f'

}

cinnamon_keybind_main_config_for_window_toggle_maximized () {

	## Window / Maximize
	util_error_echo "gsettings set org.cinnamon.Marco.window-keybindings toggle-maximized '<Super>w'"
	gsettings set org.cinnamon.Marco.window-keybindings toggle-maximized '<Super>w'

}

cinnamon_keybind_main_config_for_window_to_minimize () {

	## Window / Minimize
	util_error_echo "gsettings set org.cinnamon.Marco.window-keybindings minimize '<Super>x'"
	gsettings set org.cinnamon.Marco.window-keybindings minimize '<Super>x'

}

cinnamon_keybind_main_config_for_window_toggle_shaded () {

	## Window / Shade
	util_error_echo "gsettings set org.cinnamon.Marco.window-keybindings toggle-shaded '<Super>y"
	gsettings set org.cinnamon.Marco.window-keybindings toggle-shaded '<Super>y'
}

cinnamon_keybind_main_config_for_window_toggle_show_desktop () {

	## Window / Toggle Show Desktop
	util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings show-desktop '<Super>d'"
	gsettings set org.cinnamon.Marco.global-keybindings show-desktop '<Super>d'

}

cinnamon_keybind_main_config_for_window_toggle_above () {

	util_error_echo "gsettings set org.cinnamon.Marco.window-keybindings toggle-above '<Super>t'"
	gsettings set org.cinnamon.Marco.window-keybindings toggle-above '<Super>t'

}

cinnamon_keybind_main_config_for_window_toggle_on_all_workspaces () {

	util_error_echo "gsettings set org.cinnamon.Marco.window-keybindings toggle-on-all-workspaces '<Super>g'"
	gsettings set org.cinnamon.Marco.window-keybindings toggle-on-all-workspaces '<Super>g'

}

cinnamon_keybind_main_config_for_window_switch_windows () {

	##
	## $ gsettings list-recursively | grep Alt | grep Tab | grep cinnamon
	##
	## ```
	## org.cinnamon.desktop.keybindings.wm switch-group ['<Alt>Above_Tab']
	## org.cinnamon.desktop.keybindings.wm switch-panels ['<Control><Alt>Tab']
	## org.cinnamon.desktop.keybindings.wm switch-windows ['<Alt>Tab']
	## ```
	##

	util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings switch-group-backward '<Alt>grave'"
	gsettings set org.cinnamon.Marco.global-keybindings switch-group-backward '<Alt>grave'

	util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings switch-group '<Alt>Tab"
	gsettings set org.cinnamon.Marco.global-keybindings switch-group '<Alt>Tab'


	#util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings switch-group-backward '<Super>grave'"
	#gsettings set org.cinnamon.Marco.global-keybindings switch-group-backward '<Super>grave'

	#util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings switch-group '<Super>Tab"
	#gsettings set org.cinnamon.Marco.global-keybindings switch-group '<Super>Tab'




	util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings switch-windows-backward '<Super>a"
	gsettings set org.cinnamon.Marco.global-keybindings switch-windows-backward '<Super>a'

	util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings switch-windows '<Super>s'"
	gsettings set org.cinnamon.Marco.global-keybindings switch-windows '<Super>s'




	util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings switch-windows-all-backward '<Super>grave"
	gsettings set org.cinnamon.Marco.global-keybindings switch-windows-all-backward '<Super>grave'

	util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings switch-windows-all '<Super>Tab'"
	gsettings set org.cinnamon.Marco.global-keybindings switch-windows-all '<Super>Tab'



	util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings cycle-windows-backward '<Alt>Escape'"
	gsettings set org.cinnamon.Marco.global-keybindings cycle-windows-backward '<Alt>Escape'


	util_error_echo "gsettings set org.cinnamon.Marco.global-keybindings cycle-windows '<Super>Escape'"
	gsettings set org.cinnamon.Marco.global-keybindings cycle-windows '<Super>Escape'





}

cinnamon_keybind_main_config_for_window_to_tiling () {


	gsettings set org.cinnamon.Marco.window-keybindings move-to-center '<Super>m'


	gsettings set org.cinnamon.Marco.window-keybindings move-to-side-n 'disabled'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-side-s 'disabled'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-side-w 'disabled'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-side-e 'disabled'


	gsettings set org.cinnamon.Marco.window-keybindings move-to-corner-nw 'disabled'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-corner-ne 'disabled'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-corner-sw 'disabled'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-corner-se 'disabled'



	gsettings set org.cinnamon.Marco.window-keybindings tile-to-corner-nw '<Super><Shift>Up'
	gsettings set org.cinnamon.Marco.window-keybindings tile-to-corner-ne '<Super><Shift>Down'
	gsettings set org.cinnamon.Marco.window-keybindings tile-to-corner-sw '<Super><Shift>Left'
	gsettings set org.cinnamon.Marco.window-keybindings tile-to-corner-se '<Super><Shift>Right'


	gsettings set org.cinnamon.Marco.window-keybindings maximize '<Super>Up'
	gsettings set org.cinnamon.Marco.window-keybindings unmaximize '<Super>Down'
	gsettings set org.cinnamon.Marco.window-keybindings tile-to-side-w '<Super>Left'
	gsettings set org.cinnamon.Marco.window-keybindings tile-to-side-e '<Super>Right'

}

##
### Tail: cinnamon / config / cinnamon_keybind_main / window
################################################################################




################################################################################
### Head: cinnamon / config / cinnamon_keybind_main / workspace
##

cinnamon_keybind_main_config_for_workspace () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_main_config_for_workspace"
	util_error_echo "##"
	util_error_echo







	return 0

	cinnamon_keybind_main_config_for_workspace_base

	cinnamon_keybind_main_config_for_workspace_rename

	cinnamon_keybind_main_config_for_workspace_switch_to_workspace_cycle

	cinnamon_keybind_main_config_for_workspace_switch_to_workspace_specific

	cinnamon_keybind_main_config_for_workspace_move_to_workspace_specific


}

cinnamon_keybind_main_config_for_workspace_base () {


	gsettings set org.cinnamon.Marco.general num-workspaces 5
	gsettings set org.cinnamon.Marco.workspace-names name-1 'File'
	gsettings set org.cinnamon.Marco.workspace-names name-2 'Edit'
	gsettings set org.cinnamon.Marco.workspace-names name-3 'Web'
	gsettings set org.cinnamon.Marco.workspace-names name-4 'Term'
	gsettings set org.cinnamon.Marco.workspace-names name-5 'Misc'


	return 0

}

cinnamon_keybind_main_config_for_workspace_rename () {

	gsettings set org.cinnamon.Marco.global-keybindings rename-workspace '<Alt>r'

}

cinnamon_keybind_main_config_for_workspace_switch_to_workspace_cycle () {

	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-up 'disabled'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-down 'disabled'

	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-up '<Alt>grave'
	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-down '<Alt>Tab'

	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-left '<Alt>a'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-right '<Alt>s'

	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-prev '<Alt>z'

}

cinnamon_keybind_main_config_for_workspace_switch_to_workspace_specific () {


	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-1 '<Control><Alt>1'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-2 '<Control><Alt>2'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-3 '<Control><Alt>3'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-4 '<Control><Alt>4'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-5 '<Control><Alt>5'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-6 '<Control><Alt>6'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-7 '<Control><Alt>7'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-8 '<Control><Alt>8'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-9 '<Control><Alt>9'
	gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-10 '<Control><Alt>0'


	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-1 '<Alt>1'
	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-2 '<Alt>2'
	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-3 '<Alt>3'
	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-4 '<Alt>4'
	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-5 '<Alt>5'
	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-6 '<Alt>6'
	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-7 '<Alt>7'
	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-8 '<Alt>8'
	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-9 '<Alt>9'
	#gsettings set org.cinnamon.Marco.global-keybindings switch-to-workspace-10 '<Alt>0'

}

cinnamon_keybind_main_config_for_workspace_move_to_workspace_specific () {


	gsettings set org.cinnamon.Marco.window-keybindings move-to-workspace-1 '<Shift><Alt>exclam'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-workspace-2 '<Shift><Alt>at'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-workspace-3 '<Shift><Alt>numbersign'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-workspace-4 '<Shift><Alt>dollar'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-workspace-5 '<Shift><Alt>percent'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-workspace-6 '<Shift><Alt>asciicircum'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-workspace-7 '<Shift><Alt>ampersand'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-workspace-8 '<Shift><Alt>asterisk'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-workspace-9 '<Shift><Alt>parenleft'
	gsettings set org.cinnamon.Marco.window-keybindings move-to-workspace-10 '<Shift><Alt>parenright'



}

##
### Tail: cinnamon / config / cinnamon_keybind_main / workspace
################################################################################




################################################################################
### Head: cinnamon / config / cinnamon_keybind_main / menu
##

cinnamon_keybind_main_config_for_menu () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_main_config_for_menu"
	util_error_echo "##"
	util_error_echo









	return 0

	cinnamon_keybind_main_config_for_menu_brisk


	return 0

}

cinnamon_keybind_main_config_for_menu_brisk () {


	gsettings set com.solus-project.brisk-menu hot-key ''


	return 0

}

##
### Tail: cinnamon / config / cinnamon_keybind_main / menu
################################################################################
