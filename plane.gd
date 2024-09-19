extends RigidBody2D

@onready var flappyblueplane = $blueplane

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("flap"): 
		self.linear_velocity = Vector2(self.linear_velocity.x, -100)  # Set a consistent upward velocity.
		flappyblueplane.play("flap")


func _on_plane_animation_2d_animation_finished() -> void:
	if flappyblueplane.is_playing():
		flappyblueplane.play("glide")
