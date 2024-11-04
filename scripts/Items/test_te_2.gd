extends Sprite2D


func _ready() -> void:
	var ItemClass = load("res://scripts/Item.gd")
	var item = ItemClass.new()
	
	var item_test2 = item.createItem(
		"Предмет тестовый", 
		"Тестовый предмет ввввв описание", 
		ItemClass.ItemType.FOOD,
		{"hp": 10})
		
	print("Item ID: ", item_test2.itemId)
	print("Item Name: ", item_test2.itemName)
	print("Item Description: ", item_test2.itemDescription)
	print("Item Type: ", item_test2.itemType)
	print("Items: ", ItemClass.items)
	
	item_test2.use()
