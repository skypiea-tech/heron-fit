import '../database.dart';

class ExercisesTable extends SupabaseTable<ExercisesRow> {
  @override
  String get tableName => 'exercises';

  @override
  ExercisesRow createRow(Map<String, dynamic> data) => ExercisesRow(data);
}

class ExercisesRow extends SupabaseDataRow {
  ExercisesRow(super.data);

  @override
  SupabaseTable get table => ExercisesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get force => getField<String>('force');
  set force(String? value) => setField<String>('force', value);

  String? get level => getField<String>('level');
  set level(String? value) => setField<String>('level', value);

  String? get mechanic => getField<String>('mechanic');
  set mechanic(String? value) => setField<String>('mechanic', value);

  String? get equipment => getField<String>('equipment');
  set equipment(String? value) => setField<String>('equipment', value);

  List<String> get primaryMuscles => getListField<String>('primaryMuscles');
  set primaryMuscles(List<String>? value) =>
      setListField<String>('primaryMuscles', value);

  List<String> get secondaryMuscles => getListField<String>('secondaryMuscles');
  set secondaryMuscles(List<String>? value) =>
      setListField<String>('secondaryMuscles', value);

  List<String> get instructions => getListField<String>('instructions');
  set instructions(List<String>? value) =>
      setListField<String>('instructions', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  List<String> get images => getListField<String>('images');
  set images(List<String>? value) => setListField<String>('images', value);

  String get exerciseId => getField<String>('exercise_id')!;
  set exerciseId(String value) => setField<String>('exercise_id', value);
}
