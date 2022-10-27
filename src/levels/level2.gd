extends Node2D


func _ready():
	Variables.LEVEL = "res://src/levels/level2.tscn"
	var os_name = OS.get_name()
	if os_name == "Android":
		$"UI/Virtual joystick".show()
		$"UI/Virtual joystick2".show()
	elif os_name == "iOS":
		$"UI/Virtual joystick".show()
		$"UI/Virtual joystick2".show()
	else:
		$"UI/Virtual joystick".hide()
		$"UI/Virtual joystick2".hide()


func _on_MENUB_pressed():
	get_tree().change_scene("res://src/UI/WELCOME.tscn")



func _on_RestartB_pressed():
	if Variables.vsai == "true":
		get_tree().change_scene("res://AI/AIvsPlayer.tscn")
	elif Variables.vsai == "false":
		get_tree().change_scene("res://src/UI/lvloader.tscn")
