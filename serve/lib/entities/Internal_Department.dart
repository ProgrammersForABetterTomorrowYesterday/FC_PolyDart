/// Internal_Department.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Internal_Department
/// This is an autogenerated class mapping the MySQL Table Internal_Department to an AvacadORM Entity.

/// Subclass of Organization_Role that represents Departments within the business.
@Table('Internal_Department')
class Internal_Department extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Organization_Role_id')
	int Organization_Role_id;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Organization_Role_id')
	Role_of_Organization role_of_organization;
}