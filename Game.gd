extends Spatial

func _ready():
	var new_dialog = Dialogic.start('conversation')
	add_child(new_dialog)
