/// Shipment_Item_Feature.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Shipment_Item_Feature
/// This is an autogenerated class mapping the MySQL Table Shipment_Item_Feature to an AvacadORM Entity.

/// Association between Product_Feature entities and Shipment_Item entities that have them as features.
@Table('Shipment_Item_Feature')
class Shipment_Item_Feature extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Shipment_Item_id')
	int Shipment_Item_id;
	@Column('Product_Feature_id')
	int Product_Feature_id;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Shipment_Item_id')
	Shipment_Item shipment_item;
	@Column.ManyToOneForeignKey('Product_Feature_id')
	Product_Feature product_feature;
}