/// Purchase_Order_Item.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Purchase_Order_Item
/// This is an autogenerated class mapping the MySQL Table Purchase_Order_Item to an AvacadORM Entity.

/// Subclass of Order_Item, representing items being purchased by the business.
@Table('Purchase_Order_Item')
class Purchase_Order_Item extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Order_Item_id')
	int Order_Item_id;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Order_Item_id')
	Order_Item order_item;
	@Column.OneToManyForeignKey('Purchase_Order_Item_id')
	List<Order_Item_Association> order_item_associations;
}