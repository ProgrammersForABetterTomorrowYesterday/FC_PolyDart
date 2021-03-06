/// Purchase_Shipment.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Purchase_Shipment
/// This is an autogenerated class mapping the MySQL Table Purchase_Shipment to an AvacadORM Entity.

/// Subclass of Incoming_Shipment, representing shipments from suppliers to the business.
@Table('Purchase_Shipment')
class Purchase_Shipment extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Incoming_Shipment_id')
	int Incoming_Shipment_id;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Incoming_Shipment_id')
	Incoming_Shipment incoming_shipment;
}