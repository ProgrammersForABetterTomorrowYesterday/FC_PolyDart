/// RS_Scheduled_Time.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// RS_Scheduled_Time
/// This is an autogenerated class mapping the MySQL Table RS_Scheduled_Time to an AvacadORM Entity.

/// If a reoccurring event happens at a specific time, this table will store the time, and link to the relevent RS.
@Table('RS_Scheduled_Time')
class RS_Scheduled_Time extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('from_time')
	DateTime from_time;
	@Column('thru_time')
	DateTime thru_time;
	@Column('Reoccurring_Schedule_id')
	int Reoccurring_Schedule_id;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Reoccurring_Schedule_id')
	Reoccurring_Schedule reoccurring_schedule;
}