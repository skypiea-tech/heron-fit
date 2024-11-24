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

  int? get weight => getField<int>('weight');
  set weight(int? value) => setField<int>('weight', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);

  String? get pic => getField<String>('pic');
  set pic(String? value) => setField<String>('pic', value);
}
