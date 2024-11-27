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

  String? get exerciseId => getField<String>('exercise_id');
  set exerciseId(String? value) => setField<String>('exercise_id', value);

  int? get weight => getField<int>('weight');
  set weight(int? value) => setField<int>('weight', value);

  int? get reps => getField<int>('reps');
  set reps(int? value) => setField<int>('reps', value);

  String? get exerciseName => getField<String>('exercise_name');
  set exerciseName(String? value) => setField<String>('exercise_name', value);
}
