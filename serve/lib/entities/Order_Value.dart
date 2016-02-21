/// Order_Value.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Order_Value
/// This is an autogenerated class mapping the MySQL Table Order_Value to an AvacadORM Entity.

/// Ranges of values to be used for restricting Price_Component applicability by order total. If thru_amount is null or below from_amount, there is no upper bound to the restriction.
@Table('Order_Value')
class Order_Value extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('from_amount')
		@Column('thru_amount')
	
	// ***Table Foreign Key Entities***
	@Column.OneToManyForeignKey('Order_Value_id')
	List<Price_Order_Value_Dependency> price_order_value_dependencys;
}