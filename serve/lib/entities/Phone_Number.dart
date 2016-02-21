/// Phone_Number.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Phone_Number
/// This is an autogenerated class mapping the MySQL Table Phone_Number to an AvacadORM Entity.

/// Subtype of Communication_Mechanism, this is a phone number with an optional label.
@Table('Phone_Number')
class Phone_Number extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Communication_Mechanism_id')
	int Communication_Mechanism_id;
	@Column('phone_name')
	String phone_name;
	@Column('phone_number')
	String phone_number;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Communication_Mechanism_id')
	Communication_Mechanism communication_mechanism;
	@Column.OneToManyForeignKey('Phone_Number_id')
	List<Shipment> shipments;
}