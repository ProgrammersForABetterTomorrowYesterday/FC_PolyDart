/// Product_Component.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Product_Component
/// This is an autogenerated class mapping the MySQL Table Product_Component to an AvacadORM Entity.

/// When one Product is a component in another Product, it is helpful to record that information. This table stores those relationships, as well as how many components are used in the parent Product, instructions on how they relate, and the date range this relationship is valid through.
@Table('Product_Component')
class Product_Component extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('from_date')
	DateTime from_date;
	@Column('thru_date')
	DateTime thru_date;
	@Column('quantity')
	int quantity;
	@Column('instruction')
	String instruction;
	@Column('comment')
	String comment;
	@Column('Product_id_parent')
	int Product_id_parent;
	@Column('Product_id_child')
	int Product_id_child;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Product_id_parent')
	Product product_parent;
	@Column.ManyToOneForeignKey('Product_id_child')
	Product product_child;
}
