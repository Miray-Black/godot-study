extends CharacterBody2D

# Общая скорость движения
var speed = 200

func _physics_process(delta):
	# Получаем направление движения
	var direction_x = Input.get_axis("move_left", "move_right")
	var direction_y = Input.get_axis("move_up", "move_down")
	var shift = Input
	
	# Устанавливаем скорость в обоих направлениях
	velocity.x = speed * direction_x
	velocity.y = speed * direction_y
	
	# Применяем движение
	move_and_slide()
	
	# Отладочный вывод
	print("Position: ", position, " Velocity: ", velocity)
