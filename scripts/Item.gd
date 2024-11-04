class_name ItemClass

# Объявление перечисления ItemType
enum ItemType {
	FOOD,
	ARMOR,
	WEAPON,
	KEY
}

var itemId: int
var itemName: String
var itemDescription: String
var itemType: ItemType

# Дополнительные параметры для предметов
var hp: int          # Для FOOD
var def: int         # Для ARMOR
var atk: int         # Для WEAPON

# Статическая переменная для хранения последнего использованного itemId
static var lastItemId = 0

# Статическая переменная для хранения всех itemId
static var items = []

func createItem(itemName: String, itemDescription: String, itemType: ItemType, additionalParams: Dictionary = {}) -> ItemClass:
	var newItem = ItemClass.new()
	
	# Увеличиваем lastItemId и присваиваем его новому предмету
	newItem.itemId = ItemClass.lastItemId + 1
	ItemClass.lastItemId = newItem.itemId
	
	newItem.itemName = itemName
	newItem.itemDescription = itemDescription
	newItem.itemType = itemType
	
	# Добавляем дополнительные параметры в зависимости от типа предмета
	match itemType:
		ItemType.FOOD:
			newItem.hp = additionalParams.get("hp", 0)
		ItemType.ARMOR:
			newItem.def = additionalParams.get("def", 0)
		ItemType.WEAPON:
			newItem.atk = additionalParams.get("atk", 0)
	
	# Добавляем itemId в статическую переменную items
	ItemClass.items.append(newItem.itemId)
	
	return newItem

func use():
	# Проверка типа предмета и выполнение функции
	match itemType:
		ItemType.KEY:
			use_key()
		ItemType.FOOD:
			use_food()
		ItemType.ARMOR:
			use_armor()
		ItemType.WEAPON:
			use_weapon()

func use_key():
	print("Using ", itemName, " to unlock something")

func use_food():
	print("Eating ", itemName, " and healing ", hp, " HP")

func use_armor():
	print("Equipping ", itemName, " and gaining ", def, " defense")

func use_weapon():
	print("Equipping ", itemName, " and gaining ", atk, " attack")
