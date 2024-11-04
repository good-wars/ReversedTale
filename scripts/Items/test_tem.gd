extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var ItemClass = load("res://scripts/Item.gd")
	var item = ItemClass.new()
	
	var item_test = item.createItem( 
		"Предмет тестовый", 
		"Тестовый предмет ввввв описание", 
		ItemClass.ItemType.KEY)
		
	print("Item ID: ", item_test.itemId)
	print("Item Name: ", item_test.itemName)
	print("Item Description: ", item_test.itemDescription)
	print("Item Type: ", item_test.itemType)
	print("Items: ", ItemClass.items)
	
	item_test.use()
	
