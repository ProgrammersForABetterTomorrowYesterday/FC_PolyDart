/// Item_Issuance.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Item_Issuance
/// This is an autogenerated class mapping the MySQL Table Item_Issuance to an AvacadORM Entity.

/// When we remove items from our inventory, we need to record that via an Issuance. This could be for shipping, for store useing, or for giving away as prizes, etc. Requires an Inventory_Item, as we can't issue something we don't inventory.
@Table('Item_Issuance')
class Item_Issuance extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Inventory_Item_id')
	int Inventory_Item_id;
	@Column('Shipment_Item_id')
	int Shipment_Item_id;
	@Column('Picklist_Item_id')
	int Picklist_Item_id;
	@Column('Issuance_Reason_id')
	int Issuance_Reason_id;
	@Column('issued_datetime')
	DateTime issued_datetime;
	@Column('quantity')
	int quantity;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Inventory_Item_id')
	Inventory_Item inventory_item;
	@Column.ManyToOneForeignKey('Picklist_Item_id')
	Picklist_Item picklist_item;
	@Column.ManyToOneForeignKey('Shipment_Item_id')
	Shipment_Item shipment_item;
	@Column.ManyToOneForeignKey('Issuance_Reason_id')
	Issuance_Reason issuance_reason;
	@Column.OneToManyForeignKey('Item_Issuance_id')
	List<Item_Issuance_Role> item_issuance_roles;
}