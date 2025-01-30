

################################################################################
### Head: Setting / Module / Cinnamon / Variable
##

cinnamon_favorite_apps_var_init () {

	THE_CINNAMON_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME="50_cinnamon-favorite-apps.gschema.override"

	THE_CINNAMON_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_CINNAMON_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_CINNAMON_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_CINNAMON_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

cinnamon_favorite_apps_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: cinnamon_favorite_apps_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Cinnamon / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME=${THE_CINNAMON_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_CINNAMON_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: cinnamon_favorite_apps_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

cinnamon_favorite_apps_var_init
cinnamon_favorite_apps_var_dump

##
### Tail: Setting / Module / Cinnamon / Variable
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Portal
##

cinnamon_favorite_apps_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_favorite_apps_config_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_favorite_apps_settings_set_all


	return 0

}


cinnamon_favorite_apps_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_favorite_apps_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


cinnamon_favorite_apps_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_favorite_apps_prototype_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_favorite_apps_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Cinnamon / Portal
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Settings
##

cinnamon_favorite_apps_settings_set_all () {


	cinnamon_favorite_apps_config_start




	return 0

}

##
### Tail: Setting / Module / Cinnamon / Settings
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Gschema
##

cinnamon_favorite_apps_gschema_put_all () {

	local source_gschema_override_file_path="${THE_CINNAMON_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_CINNAMON_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
### Head: cinnamon / config / cinnamon_favorite_apps
##

cinnamon_favorite_apps_config_start () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_favorite_apps_config_start"
	util_error_echo "##"
	util_error_echo




	cinnamon_favorite_apps_config_for_main_menu

	cinnamon_favorite_apps_config_for_default_application




	return 0

}

cinnamon_favorite_apps_config_for_main_menu () {


	##
	## /usr/share/glib-2.0/schemas/org.cinnamon.marco.gschema.xml
	##


	##
	## gsettings list-recursively | grep 'favorite-apps'
	## gsettings list-recursively org.cinnamon
	## dconf dump /org/cinnamon/
	## dconf dump / | grep '\[org/cinnamon\]' -A 9
	##


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_favorite_apps_config_for_main_menu"
	util_error_echo "##"


	util_error_echo
	util_error_echo gsettings set org.cinnamon favorite-apps "['nemo.desktop', 'org.x.editor.desktop', 'firefox.desktop', 'org.gnome.Terminal.desktop', 'cinnamon-settings.desktop']"
	gsettings set org.cinnamon favorite-apps "['nemo.desktop', 'org.x.editor.desktop', 'firefox.desktop', 'org.gnome.Terminal.desktop', 'cinnamon-settings.desktop']"




	util_error_echo




	return 0

}


cinnamon_favorite_apps_config_for_default_application () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_favorite_apps_config_for_default_application"
	util_error_echo "##"


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.default-applications.terminal exec "'gnome-terminal'"
	gsettings set org.cinnamon.desktop.default-applications.terminal exec "'gnome-terminal'"




	util_error_echo




	return 0

}

##
### Tail: cinnamon / config / cinnamon_favorite_apps
################################################################################
