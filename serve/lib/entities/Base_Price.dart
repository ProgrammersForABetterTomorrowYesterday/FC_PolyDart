/// Base_Price.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Base_Price
/// This is an autogenerated class mapping the MySQL Table Base_Price to an AvacadORM Entity.

/// Subclass of Price_Component, this represents the price of the Product, which should then be modified by discounts and surcharges. This may be restricted by any of the _Dependency tables, to allow a plurality of base prices for a single Product.
@Table('Base_Price')
class Base_Price extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Price_Component_id')
	int Price_Component_id;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Price_Component_id')
	Price_Component price_component;
}