/// Sales_Tax_Lookup.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Sales_Tax_Lookup
/// This is an autogenerated class mapping the MySQL Table Sales_Tax_Lookup to an AvacadORM Entity.

/// Restricts tax rates according to Product_Category.
@Table('Sales_Tax_Lookup')
class Sales_Tax_Lookup extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Product_Category_id')
	int Product_Category_id;
	@Column('percentage')
	
	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Product_Category_id')
	Product_Category product_category;
	@Column.OneToManyForeignKey('Sales_Tax_Lookup_id')
	List<Sales_Tax_State_Dependency> sales_tax_state_dependencys;
}