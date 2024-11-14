import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get birthday => getField<String>('birthday');
  set birthday(String? value) => setField<String>('birthday', value);

  double? get gender => getField<double>('gender');
  set gender(double? value) => setField<double>('gender', value);

  double? get weight => getField<double>('weight');
  set weight(double? value) => setField<double>('weight', value);

  double? get height => getField<double>('height');
  set height(double? value) => setField<double>('height', value);
}
