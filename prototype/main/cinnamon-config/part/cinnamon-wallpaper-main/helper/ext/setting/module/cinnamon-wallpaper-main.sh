

################################################################################
### Head: Setting / Module / Cinnamon / Variable
##

cinnamon_wallpaper_main_var_init () {

	THE_CINNAMON_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_cinnamon-wallpaper-main.gschema.override"

	THE_CINNAMON_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_CINNAMON_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_CINNAMON_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_CINNAMON_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

cinnamon_wallpaper_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: cinnamon_wallpaper_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Cinnamon / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_CINNAMON_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_CINNAMON_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_CINNAMON_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CINNAMON_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: cinnamon_wallpaper_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

cinnamon_wallpaper_main_var_init
cinnamon_wallpaper_main_var_dump

##
### Tail: Setting / Module / Cinnamon / Variable
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Portal
##

cinnamon_wallpaper_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_wallpaper_main_config_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_wallpaper_main_settings_set_all





	return 0

}


cinnamon_wallpaper_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_wallpaper_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo





	return 0

}


cinnamon_wallpaper_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_wallpaper_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	cinnamon_wallpaper_main_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Cinnamon / Portal
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Settings
##

cinnamon_wallpaper_main_settings_set_all () {


	cinnamon_wallpaper_main_config_start




	return 0

}

##
### Tail: Setting / Module / Cinnamon / Settings
################################################################################


################################################################################
### Head: Setting / Module / Cinnamon / Gschema
##

cinnamon_wallpaper_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_CINNAMON_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_CINNAMON_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
### Head: cinnamon / config / cinnamon_wallpaper_main
##

cinnamon_wallpaper_main_config_start () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_wallpaper_main_config_start"
	util_error_echo "##"
	util_error_echo




	cinnamon_wallpaper_main_config_for_picture

	cinnamon_wallpaper_main_config_for_color




	return 0

}

cinnamon_wallpaper_main_config_for_picture () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_wallpaper_main_config_for_picture"
	util_error_echo "##"




	#util_error_echo
	#util_error_echo gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/default.jpg'"
	#gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/default.jpg'"


	#util_error_echo
	#util_error_echo gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/linuxmint/default_background.jpg'"
	#gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/linuxmint/default_background.jpg'"




	#util_error_echo
	#util_error_echo gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/linuxmint-wallpapers/jleung_confetti.jpg'"
	#gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/linuxmint-wallpapers/jleung_confetti.jpg'"


	#util_error_echo
	#util_error_echo gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/linuxmint-wallpapers/jpanchal_cpu.jpg'"
	#gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/linuxmint-wallpapers/jpanchal_cpu.jpg'"


	#util_error_echo
	#util_error_echo gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/linuxmint-wallpapers/jpanchal_square.jpg'"
	#gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/linuxmint-wallpapers/jpanchal_square.jpg'"


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/linuxmint-wallpapers/jpanchal_city.jpg'"
	gsettings set org.cinnamon.desktop.background picture-uri "'file:///usr/share/backgrounds/linuxmint-wallpapers/jpanchal_city.jpg'"





	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.background picture-options "'zoom'"
	gsettings set org.cinnamon.desktop.background picture-options "'zoom'"


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.background picture-opacity 100
	gsettings set org.cinnamon.desktop.background picture-opacity 100


	util_error_echo




	return 0

}

cinnamon_wallpaper_main_config_for_color () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## cinnamon_wallpaper_main_config_for_color"
	util_error_echo "##"




	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.background color-shading-type "'solid'"
	gsettings set org.cinnamon.desktop.background color-shading-type "'solid'"


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.background primary-color "'#3c3836'"
	gsettings set org.cinnamon.desktop.background primary-color "'#3c3836'"


	util_error_echo
	util_error_echo gsettings set org.cinnamon.desktop.background secondary-color "'#282828'"
	gsettings set org.cinnamon.desktop.background secondary-color "'#282828'"




	util_error_echo




	return 0

}

##
### Tail: cinnamon / config / cinnamon_wallpaper_main
################################################################################
