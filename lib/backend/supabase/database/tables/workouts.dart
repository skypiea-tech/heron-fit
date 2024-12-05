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

  String get workoutId => getField<String>('workout_id')!;
  set workoutId(String value) => setField<String>('workout_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  int? get duration => getField<int>('duration');
  set duration(int? value) => setField<int>('duration', value);
}
