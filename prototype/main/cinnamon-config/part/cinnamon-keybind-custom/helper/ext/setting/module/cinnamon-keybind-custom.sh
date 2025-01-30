

################################################################################
### Head: Setting / Module / Cinnamon / Variable
##

cinnamon_keybind_custom_var_init () {

	THE_CINNAMON_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME="50_cinnamon-keybind-custom.conf"

	THE_CINNAMON_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH="${THE_SOURCE_DCONFDB_DIR_PATH}/${THE_CINNAMON_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"
	THE_CINNAMON_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH="${THE_TARGET_DCONFDB_DIR_PATH}/${THE_CINNAMON_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"


	return 0

}

cinnamon_keybind_custom_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: cinnamon_keybind_custom_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Cinnamon / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME=${THE_CINNAMON_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH=${THE_CINNAMON_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH}"
	util_debug_echo "THE_CINNAMON_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH=${THE_CINNAMON_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: cinnamon_keybind_custom_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

cinnamon_keybind_custom_var_init
cinnamon_keybind_custom_var_dump

##
### Tail: Setting / Module / Cinnamon / Variable
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Portal
##

cinnamon_keybind_custom_config_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_custom_config_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_keybind_custom_settings_set_all

	return 0
}


cinnamon_keybind_custom_asset_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_custom_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


cinnamon_keybind_custom_prototype_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_custom_prototype_install"
	util_error_echo "##"
	util_error_echo




	sys_dconf_init

	cinnamon_keybind_custom_dconfdb_put_all

	sys_dconf_update

	return 0
}


##
### Tail: Setting / Module / Cinnamon / Portal
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Settings
##

cinnamon_keybind_custom_settings_set_all () {


	cinnamon_keybind_custom_config_start




	return 0

}

##
### Tail: Setting / Module / Cinnamon / Settings
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Dconf
##

cinnamon_keybind_custom_dconfdb_put_all () {

	cinnamon_keybind_custom_dconfdb_put_main

	return 0

}


cinnamon_keybind_custom_dconfdb_put_main () {

	local source_dconfdb_file_path="${THE_CINNAMON_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH}"

	local target_dconfdb_file_path="${THE_CINNAMON_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH}"

	#util_error_echo "${source_dconfdb_file_path}"

	#util_error_echo "${target_dconfdb_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	util_error_echo


	return 0

}

##
### Tail: Setting / Module / Cinnamon / Dconf
################################################################################








################################################################################
### Head: cinnamon / config / cinnamon_keybind_custom
##

cinnamon_keybind_custom_config_start () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_custom_config_start"
	util_error_echo "##"
	util_error_echo




	cinnamon_keybind_custom_config_for_application_launch_terminal

	cinnamon_keybind_custom_config_for_application_launch_file_manager

	cinnamon_keybind_custom_config_for_application_launch_text_editor


	return 0

}

cinnamon_keybind_custom_config_for_application_launch_terminal () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_custom_config_for_application_launch_terminal"
	util_error_echo "##"




	util_error_echo




	return 0

}

cinnamon_keybind_custom_config_for_application_launch_file_manager () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_custom_config_for_application_launch_file_manager"
	util_error_echo "##"





	util_error_echo




	return 0

}

cinnamon_keybind_custom_config_for_application_launch_text_editor () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_keybind_custom_config_for_application_launch_text_editor"
	util_error_echo "##"




	util_error_echo




	return 0

}

##
### Tail: cinnamon / config / cinnamon_keybind_custom
################################################################################
