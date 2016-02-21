/// Facility_Organization_Association.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Facility_Organization_Association
/// This is an autogenerated class mapping the MySQL Table Facility_Organization_Association to an AvacadORM Entity.

/// Association of organizations and facilities. Used to indicate that a given organization uses a given facility.
@Table('Facility_Organization_Association')
class Facility_Organization_Association extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Facility_id')
	int Facility_id;
	@Column('Organization_id')
	int Organization_id;
	@Column('from_date')
	DateTime from_date;
	@Column('thru_date')
	DateTime thru_date;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Facility_id')
	Facility facility;
	@Column.ManyToOneForeignKey('Organization_id')
	Organization organization;
}