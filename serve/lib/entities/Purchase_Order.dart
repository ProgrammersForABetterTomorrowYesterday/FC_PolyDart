/// Purchase_Order.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Purchase_Order
/// This is an autogenerated class mapping the MySQL Table Purchase_Order to an AvacadORM Entity.

/// Subclass of Order representing Purchase Orders, buying items from suppliers, etc.
@Table('Purchase_Order')
class Purchase_Order extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Order_id')
	int Order_id;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Order_id')
	Order order;
}