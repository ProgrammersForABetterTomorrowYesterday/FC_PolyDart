/// Order_Adjustment.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Order_Adjustment
/// This is an autogenerated class mapping the MySQL Table Order_Adjustment to an AvacadORM Entity.

/// There are often other adjustments to order totals that need to be factored in, and this entity tracks those adjustments. These can be applied to either Order entities, or Order_Item entities.
@Table('Order_Adjustment')
class Order_Adjustment extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Order_id')
	int Order_id;
	@Column('Order_Item_id')
	int Order_Item_id;
	@Column('Order_Adjustment_Type_id')
	int Order_Adjustment_Type_id;
	@Column('amount')
		@Column('percentage')
	
	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Order_Item_id')
	Order_Item order_item;
	@Column.ManyToOneForeignKey('Order_id')
	Order order;
	@Column.ManyToOneForeignKey('Order_Adjustment_Type_id')
	Order_Adjustment_Type order_adjustment_type;
	@Column.OneToManyForeignKey('Order_Adjustment_id')
	List<Miscellaneous_Charge> miscellaneous_charges;
	@Column.OneToManyForeignKey('Order_Adjustment_id')
	List<Discount_Adjustment> discount_adjustments;
	@Column.OneToManyForeignKey('Order_Adjustment_id')
	List<Surcharge_Adjustment> surcharge_adjustments;
	@Column.OneToManyForeignKey('Order_Adjustment_id')
	List<Sales_Tax> sales_taxs;
	@Column.OneToManyForeignKey('Order_Adjustment_id')
	List<Shipping_and_Handling> shipping_and_handlings;
	@Column.OneToManyForeignKey('Order_Adjustment_id')
	List<Fee> fees;
}