extends Node

const MOD_DIR = "toakes59-TomTato/"
const TOMTATO_LOG = "toakes59-TomTato"
var dir = ""
var ext_dir = ""
var trans_dir = ""
var content_loader_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", TOMTATO_LOG)
	dir = modLoader.UNPACKED_DIR + MOD_DIR
	ext_dir = dir + "extensions/"
	trans_dir = dir + "translations/"
	content_loader_dir = modLoader.UNPACKED_DIR + "Darkly77-ContentLoader/ContentLoader"

	modLoader.install_script_extension("res://mods-unpacked/toakes59-TomTato/extensions/ui/menus/pages/main_menu.gd")
	# Add extensions
	# modLoader.install_script_extension(ext_dir + "singletons/run_data.gd")       # custom effect `all_homing_projectiles` - register
	# modLoader.install_script_extension(ext_dir + "singletons/weapon_service.gd") # custom effect `all_homing_projectiles` - apply during run

	# Add translations
	# modLoader.add_translation_from_resource(trans_dir + "assassinmod_text.en.translation")

	# UI
	# modLoader.install_script_extension("res://mods-unpacked/Darkly77-MenuString/extensions/ui/menus/pages/main_menu.gd")


func _ready():
	_load_tomtato_content()


func _load_tomtato_content():
	ModLoaderUtils.log_info("Loading custom content", TOMTATO_LOG)

	var ContentLoader = get_node("/root/ModLoader/Darkly77-ContentLoader/ContentLoader")

	# Characters
	ContentLoader.load_data(dir + "content_data/characters.tres", TOMTATO_LOG)

	# Weapons - Melee
	ContentLoader.load_data(dir + "content_data/energy_sword.tres", TOMTATO_LOG)
	ContentLoader.load_data(dir + "content_data/butterfly_knife.tres", TOMTATO_LOG)
	ContentLoader.load_data(dir + "content_data/camera.tres", TOMTATO_LOG)
	ContentLoader.load_data(dir + "content_data/spine.tres", TOMTATO_LOG)
	ContentLoader.load_data(dir + "content_data/football.tres", TOMTATO_LOG)
	ContentLoader.load_data(dir + "content_data/shoe.tres", TOMTATO_LOG)
	
	
	# Weapons - Ranged
	ContentLoader.load_data(dir + "content_data/assult_rifle.tres", TOMTATO_LOG)
	ContentLoader.load_data(dir + "content_data/finger_guns.tres", TOMTATO_LOG)

	# items
	ContentLoader.load_data(dir + "content_data/items.tres", TOMTATO_LOG)
	
	# Challenges
	# ContentLoader.load_data(dir + "content_data/challenges.tres", TOMTATO_LOG)


