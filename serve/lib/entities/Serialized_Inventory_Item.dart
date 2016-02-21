/// Serialized_Inventory_Item.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Serialized_Inventory_Item
/// This is an autogenerated class mapping the MySQL Table Serialized_Inventory_Item to an AvacadORM Entity.

/// Subclass of Inventory_Item, representing Products which are individually serial identified. Quantity on hand is always assumed to be 1 or 0, as the item is considered unique.
@Table('Serialized_Inventory_Item')
class Serialized_Inventory_Item extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Inventory_Item_id')
	int Inventory_Item_id;
	@Column('serial_number')
	String serial_number;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Inventory_Item_id')
	Inventory_Item inventory_item;
}