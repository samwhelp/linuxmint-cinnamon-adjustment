

################################################################################
### Head: Setting / Module / Cinnamon / Variable
##

cinnamon_hot_corner_var_init () {

	THE_CINNAMON_HOT_CORNER_GSCHEMA_OVERRIDE_FILE_NAME="50_cinnamon-hot-corner.gschema.override"

	THE_CINNAMON_HOT_CORNER_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_CINNAMON_HOT_CORNER_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_CINNAMON_HOT_CORNER_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_CINNAMON_HOT_CORNER_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

cinnamon_hot_corner_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: cinnamon_hot_corner_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Cinnamon / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_HOT_CORNER_GSCHEMA_OVERRIDE_FILE_NAME=${THE_CINNAMON_HOT_CORNER_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_HOT_CORNER_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_HOT_CORNER_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_CINNAMON_HOT_CORNER_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_HOT_CORNER_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: cinnamon_hot_corner_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

cinnamon_hot_corner_var_init
cinnamon_hot_corner_var_dump

##
### Tail: Setting / Module / Cinnamon / Variable
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Portal
##

cinnamon_hot_corner_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_hot_corner_config_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_hot_corner_settings_set_all





	return 0

}


cinnamon_hot_corner_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_hot_corner_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo





	return 0

}


cinnamon_hot_corner_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_hot_corner_prototype_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_hot_corner_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Cinnamon / Portal
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Settings
##

cinnamon_hot_corner_settings_set_all () {


	cinnamon_hot_corner_config_start




	return 0

}

##
### Tail: Setting / Module / Cinnamon / Settings
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Gschema
##

cinnamon_hot_corner_gschema_put_all () {

	local source_gschema_override_file_path="${THE_CINNAMON_HOT_CORNER_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_CINNAMON_HOT_CORNER_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
### Head: cinnamon / config / cinnamon_hot_corner
##

cinnamon_hot_corner_config_start () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_hot_corner_config_start"
	util_error_echo "##"
	util_error_echo




	cinnamon_hot_corner_config_for_keybind





	return 0

}

cinnamon_hot_corner_config_for_keybind () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_hot_corner_config_for_keybind"
	util_error_echo "##"




	util_error_echo
	util_error_echo gsettings set org.cinnamon hotcorner-layout "['expo:true:0', 'gnome-terminal:true:0', 'scale:true:0', 'desktop:true:0']"
	gsettings set org.cinnamon hotcorner-layout "['expo:true:0', 'gnome-terminal:true:0', 'scale:true:0', 'desktop:true:0']"




	util_error_echo




	return 0

}

##
### Tail: cinnamon / config / cinnamon_hot_corner
################################################################################
