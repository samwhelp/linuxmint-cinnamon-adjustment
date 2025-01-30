

################################################################################
### Head: Setting / Module / Cinnamon / Variable
##

cinnamon_config_main_var_init () {

	THE_CINNAMON_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_cinnamon-config-main.gschema.override"

	THE_CINNAMON_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_CINNAMON_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_CINNAMON_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_CINNAMON_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

cinnamon_config_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: cinnamon_config_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Cinnamon / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_CINNAMON_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_CINNAMON_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: cinnamon_config_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

cinnamon_config_main_var_init
cinnamon_config_main_var_dump

##
### Tail: Setting / Module / Cinnamon / Variable
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Portal
##

cinnamon_config_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_config_main_config_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_config_main_settings_set_all


	return 0

}


cinnamon_config_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_config_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


cinnamon_config_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_config_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_config_main_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Cinnamon / Portal
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Settings
##

cinnamon_config_main_settings_set_all () {


	cinnamon_config_main_config_start




	return 0

}

##
### Tail: Setting / Module / Cinnamon / Settings
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Gschema
##

cinnamon_config_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_CINNAMON_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_CINNAMON_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
### Head: cinnamon / config / cinnamon_config_main
##

cinnamon_config_main_config_start () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_config_main_config_start"
	util_error_echo "##"
	util_error_echo

	cinnamon_config_main_config_for_wm

	cinnamon_config_main_config_for_keyboard

	cinnamon_config_main_config_for_sound

	cinnamon_config_main_config_for_layout




	return 0

}

cinnamon_config_main_config_for_wm () {


	##
	## /usr/share/glib-2.0/schemas/org.cinnamon.marco.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.cinnamon.desktop.wm.preferences
	## gsettings list-recursively org.cinnamon.desktop.wm.preferences
	## dconf dump /org/cinnamon/desktop/wm/preferences/
	## dconf dump / | grep 'org/cinnamon/desktop/wm/preferences' -A 13
	##


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_config_main_config_for_wm"
	util_error_echo "##"


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences action-double-click-titlebar "'toggle-maximize'"
	gsettings set org.cinnamon.desktop.wm.preferences action-double-click-titlebar "'toggle-maximize'"


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences action-middle-click-titlebar "'lower'"
	gsettings set org.cinnamon.desktop.wm.preferences action-middle-click-titlebar "'lower'"


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences action-right-click-titlebar "'menu'"
	gsettings set org.cinnamon.desktop.wm.preferences action-right-click-titlebar "'menu'"


	util_error_echo
	util_error_echo


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar "'shade'"
	gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar "'shade'"



	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences mouse-button-modifier "'<Super>'"
	gsettings set org.cinnamon.desktop.wm.preferences mouse-button-modifier "'<Super>'"



	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences mouse-button-zoom-modifier "'<Super>'"
	gsettings set org.cinnamon.desktop.wm.preferences mouse-button-zoom-modifier "'<Super>'"



	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences resize-with-right-button true
	gsettings set org.cinnamon.desktop.wm.preferences resize-with-right-button true



	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences raise-on-click true
	gsettings set org.cinnamon.desktop.wm.preferences raise-on-click true


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences focus-mode "'click'"
	gsettings set org.cinnamon.desktop.wm.preferences focus-mode "'click'"


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences focus-new-windows "'smart'"
	gsettings set org.cinnamon.desktop.wm.preferences focus-new-windows "'smart'"





	util_error_echo




	return 0

}

cinnamon_config_main_config_for_keyboard () {



	##
	## /usr/share/glib-2.0/schemas/org.cinnamon.desktop.peripherals.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.cinnamon.desktop.peripherals.keyboard
	## gsettings list-recursively org.cinnamon.desktop.peripherals.keyboard
	## dconf dump /org/cinnamon/desktop/peripherals/keyboard/
	## dconf dump / | grep 'org/cinnamon/desktop/peripherals/keyboard' -A 3
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_config_main_config_for_keyboard"
	util_error_echo "##"


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.peripherals.keyboard numlock-state false
	gsettings set org.cinnamon.desktop.peripherals.keyboard numlock-state false

	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.peripherals.keyboard remember-numlock-state true
	gsettings set org.cinnamon.desktop.peripherals.keyboard remember-numlock-state true





	util_error_echo


	return 0

}

cinnamon_config_main_config_for_sound () {



	##
	## /usr/share/glib-2.0/schemas/org.cinnamon.desktop.sound.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.cinnamon.desktop.sound
	## gsettings list-recursively org.cinnamon.desktop.sound
	## dconf dump /org/cinnamon/desktop/sound/
	## dconf dump / | grep 'org/cinnamon/desktop/sound' -A 3
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_config_main_config_for_sound"
	util_error_echo "##"


	util_error_echo
	util_error_echo settings set org.cinnamon.desktop.sound event-sounds false
	gsettings set org.cinnamon.desktop.sound event-sounds false




	util_error_echo


	return 0

}


cinnamon_config_main_config_for_layout () {



	##
	## /usr/share/glib-2.0/schemas/org.cinnamon.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.cinnamon
	## gsettings list-recursively org.cinnamon
	## dconf dump /org/cinnamon/
	## dconf dump / | grep '\[org/cinnamon\]' -A 5
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_config_main_config_for_layout"
	util_error_echo "##"


	#util_error_echo
	#util_error_echo gsettings set org.cinnamon enabled-applets "['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:1:show-desktop@cinnamon.org:1', 'panel1:left:2:grouped-window-list@cinnamon.org:2', 'panel1:right:1:systray@cinnamon.org:3', 'panel1:right:2:xapp-status@cinnamon.org:4', 'panel1:right:3:notifications@cinnamon.org:5', 'panel1:right:4:printers@cinnamon.org:6', 'panel1:right:5:removable-drives@cinnamon.org:7', 'panel1:right:6:keyboard@cinnamon.org:8', 'panel1:right:7:favorites@cinnamon.org:9', 'panel1:right:8:network@cinnamon.org:10', 'panel1:right:9:sound@cinnamon.org:11', 'panel1:right:10:power@cinnamon.org:12', 'panel1:center:0:calendar@cinnamon.org:13', 'panel1:right:0:workspace-switcher@cinnamon.org:14']"
	#gsettings set org.cinnamon enabled-applets "['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:1:show-desktop@cinnamon.org:1', 'panel1:left:2:grouped-window-list@cinnamon.org:2', 'panel1:right:1:systray@cinnamon.org:3', 'panel1:right:2:xapp-status@cinnamon.org:4', 'panel1:right:3:notifications@cinnamon.org:5', 'panel1:right:4:printers@cinnamon.org:6', 'panel1:right:5:removable-drives@cinnamon.org:7', 'panel1:right:6:keyboard@cinnamon.org:8', 'panel1:right:7:favorites@cinnamon.org:9', 'panel1:right:8:network@cinnamon.org:10', 'panel1:right:9:sound@cinnamon.org:11', 'panel1:right:10:power@cinnamon.org:12', 'panel1:center:0:calendar@cinnamon.org:13', 'panel1:right:0:workspace-switcher@cinnamon.org:14']"


	util_error_echo
	util_error_echo gsettings set org.cinnamon enabled-applets "['panel1:center:0:menu@cinnamon.org:0', 'panel1:left:1:separator@cinnamon.org:1', 'panel1:center:1:grouped-window-list@cinnamon.org:2', 'panel1:right:0:systray@cinnamon.org:3', 'panel1:right:1:xapp-status@cinnamon.org:4', 'panel1:right:2:notifications@cinnamon.org:5', 'panel1:right:3:printers@cinnamon.org:6', 'panel1:right:4:removable-drives@cinnamon.org:7', 'panel1:right:5:keyboard@cinnamon.org:8', 'panel1:right:6:favorites@cinnamon.org:9', 'panel1:right:7:network@cinnamon.org:10', 'panel1:right:8:sound@cinnamon.org:11', 'panel1:right:9:power@cinnamon.org:12', 'panel1:right:10:calendar@cinnamon.org:13', 'panel1:right:11:cornerbar@cinnamon.org:14']"
	gsettings set org.cinnamon enabled-applets "['panel1:center:0:menu@cinnamon.org:0', 'panel1:left:1:separator@cinnamon.org:1', 'panel1:center:1:grouped-window-list@cinnamon.org:2', 'panel1:right:0:systray@cinnamon.org:3', 'panel1:right:1:xapp-status@cinnamon.org:4', 'panel1:right:2:notifications@cinnamon.org:5', 'panel1:right:3:printers@cinnamon.org:6', 'panel1:right:4:removable-drives@cinnamon.org:7', 'panel1:right:5:keyboard@cinnamon.org:8', 'panel1:right:6:favorites@cinnamon.org:9', 'panel1:right:7:network@cinnamon.org:10', 'panel1:right:8:sound@cinnamon.org:11', 'panel1:right:9:power@cinnamon.org:12', 'panel1:right:10:calendar@cinnamon.org:13', 'panel1:right:11:cornerbar@cinnamon.org:14']"



	util_error_echo
	util_error_echo gsettings set org.cinnamon next-applet-id 15
	gsettings set org.cinnamon next-applet-id 15


	util_error_echo
	util_error_echo gsettings set org.cinnamon panel-edit-mode false
	gsettings set org.cinnamon panel-edit-mode false


	#util_error_echo
	#util_error_echo gsettings set org.cinnamon panels-enabled "['1:0:top']"
	#gsettings set org.cinnamon panels-enabled "['1:0:top']"


	util_error_echo
	util_error_echo gsettings set org.cinnamon panels-enabled "['1:0:bottom']"
	gsettings set org.cinnamon panels-enabled "['1:0:bottom']"


	util_error_echo


	return 0

}

##
### Tail: cinnamon / config / cinnamon_config_main
################################################################################
