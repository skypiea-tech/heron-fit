import '../database.dart';

class SetsTable extends SupabaseTable<SetsRow> {
  @override
  String get tableName => 'sets';

  @override
  SetsRow createRow(Map<String, dynamic> data) => SetsRow(data);
}

class SetsRow extends SupabaseDataRow {
  SetsRow(super.data);

  @override
  SupabaseTable get table => SetsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get workoutId => getField<String>('workout_id');
  set workoutId(String? value) => setField<String>('workout_id', value);

  String get exerciseId => getField<String>('exercise_id')!;
  set exerciseId(String value) => setField<String>('exercise_id', value);

  int get reps => getField<int>('reps')!;
  set reps(int value) => setField<int>('reps', value);

  int get weight => getField<int>('weight')!;
  set weight(int value) => setField<int>('weight', value);

  bool? get completed => getField<bool>('completed');
  set completed(bool? value) => setField<bool>('completed', value);

  int? get previousWeight => getField<int>('previous_weight');
  set previousWeight(int? value) => setField<int>('previous_weight', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get workoutExerciseId => getField<String>('workout_exercise_id');
  set workoutExerciseId(String? value) =>
      setField<String>('workout_exercise_id', value);

  int? get setNumber => getField<int>('set_number');
  set setNumber(int? value) => setField<int>('set_number', value);
}
