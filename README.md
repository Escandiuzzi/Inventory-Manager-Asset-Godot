# Inventory-Manager-Asset-Godot

This asset provides you with a fully working inventory, you only need to define the number of slots of it in the Godot’s inspector.
What does the Inventory do?
It stores any item you define and stack them in the inventory. It also saves and loads these items from a json file.
How does it work?
The inventory comes with a simple interface, where the player will see the item’s name, and he can also see its details by hovering with the mouse.
Where do I find it?
Its main code can be found on inventory.gd, you can get it running by simply attaching the script to a node. 
Anything else?
We also provide an item structure, with you can use it to create your items. The item’s key for searching is the item’s name. You can modify the structure at will or create your own. This is its json structure: 

You can also send items throughout your own structures by connecting the on_UIInputHandler_on_item_selected signal to the structure’s node. 
