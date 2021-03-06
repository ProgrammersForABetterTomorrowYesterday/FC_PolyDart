/// Price_Component_Feature_Association.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Price_Component_Feature_Association
/// This is an autogenerated class mapping the MySQL Table Price_Component_Feature_Association to an AvacadORM Entity.

/// Associates a Price_Component with a Product_Feature.
@Table('Price_Component_Feature_Association')
class Price_Component_Feature_Association extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Price_Component_id')
	int Price_Component_id;
	@Column('Product_Feature_id')
	int Product_Feature_id;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Price_Component_id')
	Price_Component price_component;
	@Column.ManyToOneForeignKey('Product_Feature_id')
	Product_Feature product_feature;
}