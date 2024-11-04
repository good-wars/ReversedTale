extends CharacterBody2D

const SPEED = 300.0

func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement.
	var direction = Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	)

	# Normalize the direction to prevent faster diagonal movement.
	direction = direction.normalized()

	# Apply the direction to the velocity.
	velocity = direction * SPEED

	move_and_slide()
