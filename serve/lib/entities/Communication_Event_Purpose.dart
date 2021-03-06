/// Communication_Event_Purpose.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Communication_Event_Purpose
/// This is an autogenerated class mapping the MySQL Table Communication_Event_Purpose to an AvacadORM Entity.

/// Associates some purpose(s) with a Communication_Event entity, describing the goals and purposes of the event by referencing a Communication_Event_Purpose_Type for the purpose discriptions.
@Table('Communication_Event_Purpose')
class Communication_Event_Purpose extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Communication_Event_id')
	int Communication_Event_id;
	@Column('Communication_Event_Purpose_Type_id')
	int Communication_Event_Purpose_Type_id;
	@Column('comment')
	String comment;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Communication_Event_id')
	Communication_Event communication_event;
	@Column.ManyToOneForeignKey('Communication_Event_Purpose_Type_id')
	Communication_Event_Purpose_Type communication_event_purpose_type;
}