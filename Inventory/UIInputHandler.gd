extends Node

signal on_item_selected(item_stats);

onready var itemStats = get_parent().get_node("BackgroundContainer/ItemStats");
onready var inventory = get_parent().get_node("Inventory");

func _on_SlotButton_pressed(extra_arg_0): #When a button is pressed, the item represented by the button will be removed from the inventory
	var keys = inventory._get_keys();
	
	if keys.size() > extra_arg_0:
		var item = inventory._get_item(keys[extra_arg_0]);
		emit_signal("on_item_selected", item); #The item that will be removed, used this to return the disired effect of the item in your game, link the signal with the script that you want
		inventory._remove_item(keys[extra_arg_0], 1);
	pass;

func _on_SlotButton_mouse_entered(extra_arg_0): #Used to get the item stat when the mouse is hovering the button
	var keys = inventory._get_keys();
	
	if keys.size() > extra_arg_0:
		var item = inventory._get_item(keys[extra_arg_0]);
		itemStats.text += "Name: "  + str(keys[extra_arg_0]) + "\n";
		itemStats.text += "Type: " + str(item._get_stat("type")).capitalize() + "\n";
		itemStats.text += "Heal: "  + str(item._get_stat("heal")) + "\n";
		itemStats.text += "Damage: "  + str(item._get_stat("damage")) + "\n";
		itemStats.text += "Durability: "  + str(item._get_stat("durability")) + "\n";
		itemStats.text += "Quantity left: x" + str(inventory._get_item_count(keys[extra_arg_0])) + "\n";
	pass;

func _on_SlotButton_mouse_exited(): #Used to clear the text box
	itemStats.text = "";
	pass;
