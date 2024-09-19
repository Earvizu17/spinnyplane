extends RigidBody2D

@onready var flappyblueplane = $blueplane

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("flap"): 
		self.apply_force(Vector2(0, -15250))
		flappyblueplane.play("flap")


func _on_plane_animation_2d_animation_finished() -> void:
	if flappyblueplane.is_playing():
		flappyblueplane.play("glide")
