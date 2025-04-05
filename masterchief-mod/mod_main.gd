extends Node

const MOD_DIR = "masterchief-mod/"
const MASTER_CHIEF_LOG = "masterchief-mod"
var dir = ""
var ext_dir = ""
var trans_dir = ""
var content_loader_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", MASTER_CHIEF_LOG)
	dir = modLoader.UNPACKED_DIR + MOD_DIR
	ext_dir = dir + "extensions/"
	trans_dir = dir + "translations/"
	content_loader_dir = modLoader.UNPACKED_DIR + "Darkly77-ContentLoader/ContentLoader"

	modLoader.install_script_extension("res://mods-unpacked/masterchief-mod/extensions/ui/menus/pages/main_menu.gd")
	# Add extensions
	# modLoader.install_script_extension(ext_dir + "singletons/run_data.gd")       # custom effect `all_homing_projectiles` - register
	# modLoader.install_script_extension(ext_dir + "singletons/weapon_service.gd") # custom effect `all_homing_projectiles` - apply during run

	# Add translations
	# modLoader.add_translation_from_resource(trans_dir + "assassinmod_text.en.translation")

	# UI
	# modLoader.install_script_extension("res://mods-unpacked/Darkly77-MenuString/extensions/ui/menus/pages/main_menu.gd")


func _ready():
	_load_master_chief_content()


func _load_master_chief_content():
	ModLoaderUtils.log_info("Loading custom content", MASTER_CHIEF_LOG)

	var ContentLoader = get_node("/root/ModLoader/Darkly77-ContentLoader/ContentLoader")

	# Characters
	ContentLoader.load_data(dir + "content_data/characters.tres", MASTER_CHIEF_LOG)

	# Weapons - Melee
	ContentLoader.load_data(dir + "content_data/energy_sword.tres", MASTER_CHIEF_LOG)
	ContentLoader.load_data(dir + "content_data/butterfly_knife.tres", MASTER_CHIEF_LOG)
	ContentLoader.load_data(dir + "content_data/camera.tres", MASTER_CHIEF_LOG)
	ContentLoader.load_data(dir + "content_data/spine.tres", MASTER_CHIEF_LOG)
	ContentLoader.load_data(dir + "content_data/football.tres", MASTER_CHIEF_LOG)
	ContentLoader.load_data(dir + "content_data/shoe.tres", MASTER_CHIEF_LOG)
	
	
	# Weapons - Ranged
	ContentLoader.load_data(dir + "content_data/assult_rifle.tres", MASTER_CHIEF_LOG)
	ContentLoader.load_data(dir + "content_data/finger_guns.tres", MASTER_CHIEF_LOG)

	# items
	ContentLoader.load_data(dir + "content_data/items.tres", MASTER_CHIEF_LOG)
	
	# Challenges
	ContentLoader.load_data(dir + "content_data/challenges.tres", MASTER_CHIEF_LOG)


