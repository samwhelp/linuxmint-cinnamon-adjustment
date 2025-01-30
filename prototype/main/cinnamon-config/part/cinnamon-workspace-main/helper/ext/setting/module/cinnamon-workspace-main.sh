

################################################################################
### Head: Setting / Module / Cinnamon / Variable
##

cinnamon_workspace_main_var_init () {

	THE_CINNAMON_WORKSPACE_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_cinnamon-workspace-main.gschema.override"

	THE_CINNAMON_WORKSPACE_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_CINNAMON_WORKSPACE_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_CINNAMON_WORKSPACE_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_CINNAMON_WORKSPACE_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

cinnamon_workspace_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: cinnamon_workspace_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Cinnamon / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_WORKSPACE_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_CINNAMON_WORKSPACE_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_WORKSPACE_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_WORKSPACE_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_CINNAMON_WORKSPACE_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_WORKSPACE_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: cinnamon_workspace_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

cinnamon_workspace_main_var_init
cinnamon_workspace_main_var_dump

##
### Tail: Setting / Module / Cinnamon / Variable
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Portal
##

cinnamon_workspace_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_workspace_main_config_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_workspace_main_settings_set_all





	return 0

}


cinnamon_workspace_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_workspace_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo





	return 0

}


cinnamon_workspace_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_workspace_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_workspace_main_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Cinnamon / Portal
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Settings
##

cinnamon_workspace_main_settings_set_all () {


	cinnamon_workspace_main_config_start




	return 0

}

##
### Tail: Setting / Module / Cinnamon / Settings
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Gschema
##

cinnamon_workspace_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_CINNAMON_WORKSPACE_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_CINNAMON_WORKSPACE_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
### Head: cinnamon / config / cinnamon_workspace_main
##

cinnamon_workspace_main_config_start () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_workspace_main_config_start"
	util_error_echo "##"
	util_error_echo

	cinnamon_workspace_main_config_for_workspace_preference

	cinnamon_workspace_main_config_for_workspace_number

	cinnamon_workspace_main_config_for_workspace_name




	return 0

}

cinnamon_workspace_main_config_for_workspace_preference () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_workspace_main_config_for_workspace_preference"
	util_error_echo "##"




	util_error_echo
	util_error_echo gsettings set org.cinnamon workspace-expo-view-as-grid true
	gsettings set org.cinnamon workspace-expo-view-as-grid true




	util_error_echo
	util_error_echo gsettings set org.cinnamon.muffin dynamic-workspaces false
	gsettings set org.cinnamon.muffin dynamic-workspaces false


	util_error_echo
	util_error_echo gsettings set org.cinnamon.muffin workspace-cycle true
	gsettings set org.cinnamon.muffin workspace-cycle true




	util_error_echo




	return 0

}

cinnamon_workspace_main_config_for_workspace_number () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_workspace_main_config_for_workspace_number"
	util_error_echo "##"




	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 5
	gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 5




	util_error_echo




	return 0

}

cinnamon_workspace_main_config_for_workspace_name () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_workspace_main_config_for_workspace_name"
	util_error_echo "##"




	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"
	gsettings set org.cinnamon.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"




	util_error_echo




	return 0

}

##
### Tail: cinnamon / config / cinnamon_workspace_main
################################################################################
