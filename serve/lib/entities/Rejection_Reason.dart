/// Rejection_Reason.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Rejection_Reason
/// This is an autogenerated class mapping the MySQL Table Rejection_Reason to an AvacadORM Entity.

/// If any of a shipment is rejected, we link to a reason for doing so.
@Table('Rejection_Reason')
class Rejection_Reason extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('description')
	String description;

	// ***Table Foreign Key Entities***
	@Column.OneToManyForeignKey('Rejection_Reason_id')
	List<Shipment_Receipt> shipment_receipts;
}