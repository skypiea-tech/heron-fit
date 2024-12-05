import '../database.dart';

class WorkoutExercisesTable extends SupabaseTable<WorkoutExercisesRow> {
  @override
  String get tableName => 'workout_exercises';

  @override
  WorkoutExercisesRow createRow(Map<String, dynamic> data) =>
      WorkoutExercisesRow(data);
}

class WorkoutExercisesRow extends SupabaseDataRow {
  WorkoutExercisesRow(super.data);

  @override
  SupabaseTable get table => WorkoutExercisesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get workoutId => getField<String>('workout_id');
  set workoutId(String? value) => setField<String>('workout_id', value);

  String? get exerciseId => getField<String>('exercise_id');
  set exerciseId(String? value) => setField<String>('exercise_id', value);
}
