/// Communication_Event_Purpose_Type.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Communication_Event_Purpose_Type
/// This is an autogenerated class mapping the MySQL Table Communication_Event_Purpose_Type to an AvacadORM Entity.

/// List of purpose types to be referenced by a Community_Event_Purpose entity.
@Table('Communication_Event_Purpose_Type')
class Communication_Event_Purpose_Type extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('description')
	String description;

	// ***Table Foreign Key Entities***
	@Column.OneToManyForeignKey('Communication_Event_Purpose_Type_id')
	List<Communication_Event_Purpose> communication_event_purposes;
}