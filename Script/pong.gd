extends Node2D

const CENTER = Vector2(-32.0, 92.0)
var Player_Score = 0
var Enemy_Score = 0

func _on_goal_left_body_entered(body: Node2D) -> void:
	Enemy_Score += 1
	$EnemyScore.text = str(Enemy_Score)
	reset()

func _on_goa_l_right_body_entered(body: Node2D) -> void:
	Player_Score += 1
	$PlayerScore.text = str(Player_Score)
	reset()
	
func reset():
	$Ball.position = CENTER
	$Ball.call("set_ball_velocity")
	$Player.position.y = CENTER.y
	$Enemy.position.y = CENTER.y
