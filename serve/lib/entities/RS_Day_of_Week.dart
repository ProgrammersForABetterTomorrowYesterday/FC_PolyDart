/// RS_Day_of_Week.dart
/// Version 0.0.1a
/// Copyright 2016 Programmers for a Better Tomorrow, Yesterday

part of entities;

/// RS_Day_of_Week
/// This is an autogenerated class mapping the MySQL Table RS_Day_of_Week to an AvacadORM Entity.

/// If a reoccurring event happens on a specific day of the week, this table will store the time, and link to the relevent RS.
@Table('RS_Day_of_Week')
class RS_Day_of_Week extends Entity {
	// ***Table Columns***
	@Column.PrimaryKey('id')
	int id;
	@Column('day')
	int day;
	@Column('Reoccurring_Schedule_id')
	int Reoccurring_Schedule_id;

	// ***Table Foreign Key Entities***
	@Column.ManyToOneForeignKey('Reoccurring_Schedule_id')
	Reoccurring_Schedule reoccurring_schedule;
}