import '../database.dart';

class WorkoutsTable extends SupabaseTable<WorkoutsRow> {
  @override
  String get tableName => 'workouts';

  @override
  WorkoutsRow createRow(Map<String, dynamic> data) => WorkoutsRow(data);
}

class WorkoutsRow extends SupabaseDataRow {
  WorkoutsRow(super.data);

  @override
  SupabaseTable get table => WorkoutsTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get duration => getField<int>('duration');
  set duration(int? value) => setField<int>('duration', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String get workoutId => getField<String>('workout_id')!;
  set workoutId(String value) => setField<String>('workout_id', value);
}
