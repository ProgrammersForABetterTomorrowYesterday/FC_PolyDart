/// Sales_Tax.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Sales_Tax
/// This is an autogenerated class mapping the MySQL Table Sales_Tax to an AvacadORM Entity.

/// Subclass of Order_Adjustment, this adjustment is due to Sales Tax.
@Table('Sales_Tax')
class Sales_Tax extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Order_Adjustment_id')
	int Order_Adjustment_id;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Order_Adjustment_id')
	Order_Adjustment order_adjustment;
}