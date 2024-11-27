import '../database.dart';

class TemplatesTable extends SupabaseTable<TemplatesRow> {
  @override
  String get tableName => 'templates';

  @override
  TemplatesRow createRow(Map<String, dynamic> data) => TemplatesRow(data);
}

class TemplatesRow extends SupabaseDataRow {
  TemplatesRow(super.data);

  @override
  SupabaseTable get table => TemplatesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  List<String> get exercises => getListField<String>('exercises');
  set exercises(List<String>? value) =>
      setListField<String>('exercises', value);
}
