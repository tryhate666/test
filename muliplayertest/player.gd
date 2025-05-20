extends CharacterBody2D

func _enter_tree():
	set_multiplayer_authority(name.to_int())
	if is_multiplayer_authority():
		print("authority +")
	else: print("authority -")
	$NickName.text = name
	
func _process(_delta: float):
	if is_multiplayer_authority():
		velocity = Input.get_vector("ui_left","ui_right","ui_up","ui_down") * 400
	move_and_slide()
	
