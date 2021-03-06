/// Communication_Event.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// Communication_Event
/// This is an autogenerated class mapping the MySQL Table Communication_Event to an AvacadORM Entity.

/// List of all communications between parties, including date and time, a note, and connections to reference information about the communication event. Party_Relationship_id is an optional value, used only in 2-party communications. In >= 3-party communications, each party involved in the event should instead be given a Communication_Event_Role entry.
@Table('Communication_Event')
class Communication_Event extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('Party_Relationship_id')
	int Party_Relationship_id;
	@Column('Communication_Event_Status_Type_id')
	int Communication_Event_Status_Type_id;
	@Column('Communication_Mechanism_Type_id')
	int Communication_Mechanism_Type_id;
	@Column('datetime_start')
	DateTime datetime_start;
	@Column('datetime_end')
	DateTime datetime_end;
	@Column('note')
	String note;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Party_Relationship_id')
	Party_Relationship party_relationship;
	@Column.ManyToOneForeignKey('Communication_Event_Status_Type_id')
	Communication_Event_Status_Type communication_event_status_type;
	@Column.ManyToOneForeignKey('Communication_Mechanism_Type_id')
	Communication_Mechanism_Type communication_mechanism_type;
	@Column.OneToManyForeignKey('Communication_Event_id')
	List<Communication_Event_Role> communication_event_roles;
	@Column.OneToManyForeignKey('Communication_Event_id')
	List<Communication_Event_Purpose> communication_event_purposes;
}