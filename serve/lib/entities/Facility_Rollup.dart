/// Facility_Rollup.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Facility_Rollup
/// This is an autogenerated class mapping the MySQL Table Facility_Rollup to an AvacadORM Entity.

/// This table allows an arbitrary level of recursion, including facility entities within other facility entities.
@Table('Facility_Rollup')
class Facility_Rollup extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Facility_id_parent')
	int Facility_id_parent;
	@Column('Facility_id_child')
	int Facility_id_child;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Facility_id_parent')
	Facility facility_parent;
	@Column.ManyToOneForeignKey('Facility_id_child')
	Facility facility_child;
}