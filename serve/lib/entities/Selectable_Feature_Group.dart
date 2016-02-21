/// Selectable_Feature_Group.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Selectable_Feature_Group
/// This is an autogenerated class mapping the MySQL Table Selectable_Feature_Group to an AvacadORM Entity.

/// List of way that Selectable_Features might be exclusively grouped.
@Table('Selectable_Feature_Group')
class Selectable_Feature_Group extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('description')
	String description;

	// ***Table Foreign Key Entities***
	@Column.OneToManyForeignKey('Selectable_Feature_Group_id')
	List<Selectable_Feature> selectable_features;
}