extends KinematicBody

export var max_speed : int = 5

onready var anim_tree = $AnimationTree

var velocity = Vector3(0,0,0)
var target : Spatial = null
var show = false


func _physics_process(delta):
	if target:
		var desired_velocity = self.transform.origin.direction_to(target.transform.origin) * max_speed
		velocity.x = desired_velocity.x
		velocity.z = 0
		velocity = move_and_slide(velocity, Vector3.UP)
		look_at(target.transform.origin, Vector3.UP)
		rotate_y(PI)

func switch_to(anim_name:String):
	match anim_name:
		"Idle":
			anim_tree.set("parameter/Idle_Run/blend_amount", 0)
		"Run":
			anim_tree.set("parameter/Idle_Run/blend_amount", 1)


func _on_Area_body_entered(body: Spatial):
	if body is Player:
		target = body
		look_at(body.transform.origin, Vector3.UP)
		rotate_y(PI)
		switch_to("Run")
	else:
		switch_to("Idle")


func _on_Area_body_exited(body):
	target = null



func _on_Area2_body_entered(body):
	if !show:
		show = true
		var new_dialog = Dialogic.start('conversation')
		add_child(new_dialog)
