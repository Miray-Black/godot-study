extends CharacterBody2D

var speed = 200
var gravity = 980

func _ready():
	# Эта функция вызывается при создании нода
	print("Player node is ready!")

func _physics_process(delta):
	# Движение вправо с постоянной скоростью
	velocity.x = speed
	
	# Применяем гравитацию
	velocity.y += gravity * delta
	
	# Применяем движение
	move_and_slide()
	
	# Отладочный вывод
	print("Position: ", position, " Velocity: ", velocity)
