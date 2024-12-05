import '../database.dart';

class UpdateWeightTable extends SupabaseTable<UpdateWeightRow> {
  @override
  String get tableName => 'update_weight';

  @override
  UpdateWeightRow createRow(Map<String, dynamic> data) => UpdateWeightRow(data);
}

class UpdateWeightRow extends SupabaseDataRow {
  UpdateWeightRow(super.data);

  @override
  SupabaseTable get table => UpdateWeightTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get weight => getField<String>('weight');
  set weight(String? value) => setField<String>('weight', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);

  String? get pic => getField<String>('pic');
  set pic(String? value) => setField<String>('pic', value);

  String? get identifierId => getField<String>('identifier_id');
  set identifierId(String? value) => setField<String>('identifier_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
