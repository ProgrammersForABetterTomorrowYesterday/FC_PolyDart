/// Sale_Type.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Sale_Type
/// This is an autogenerated class mapping the MySQL Table Sale_Type to an AvacadORM Entity.

/// List of sale types that this Price_Component are applicable to.
@Table('Sale_Type')
class Sale_Type extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('description')
	String description;

	// ***Table Foreign Key Entities***
	@Column.OneToManyForeignKey('Sale_Type_id')
	List<Price_Sale_Type_Dependency> price_sale_type_dependencys;
}