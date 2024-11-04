extends Node

var Item = load("res://scripts/Item.gd")
var Room = load("res://scripts/Room.gd")

# [PLAYER]
var playerName = "Test"

# Статы игрока
var xp = 0
var lv = 1
var hp = 20
var maxHp = 20

var money = 0

var def = 0 
var atk = 0

# Аттака и защита в ()
var defPls = 0
var atkPls = 0

var kills = 0

var spares = 0
var murderLevel = 0

var slots = {"weapon": 0, "armor": 0} # Слот орижия и слот брони ID

# [WORLD]
var gameOver = 0

var roomId = 0

var roomsCount = Room.rooms.size() + 1

var fun = 1 # от 1 до x.

var Items = Item.items

var space1 = {
	0: 0, # ID_СЛОТА: ID_ПРЕДМЕТА
	1: 0,
	2: 0,
	3: 0,
	4: 0
	# ...
}

var space2 = {
	0: 0, # ID_СЛОТА: ID_ПРЕДМЕТА
	1: 0,
	2: 0,
	3: 0,
	4: 0
	# ...
}
