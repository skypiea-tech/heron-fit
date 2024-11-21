import '../database.dart';

class SessionsTable extends SupabaseTable<SessionsRow> {
  @override
  String get tableName => 'sessions';

  @override
  SessionsRow createRow(Map<String, dynamic> data) => SessionsRow(data);
}

class SessionsRow extends SupabaseDataRow {
  SessionsRow(super.data);

  @override
  SupabaseTable get table => SessionsTable();

  String get sessionId => getField<String>('session_id')!;
  set sessionId(String value) => setField<String>('session_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get time => getField<String>('time');
  set time(String? value) => setField<String>('time', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get confirmed => getField<bool>('confirmed');
  set confirmed(bool? value) => setField<bool>('confirmed', value);

  bool? get completed => getField<bool>('completed');
  set completed(bool? value) => setField<bool>('completed', value);

  String? get ticketId => getField<String>('ticket_id');
  set ticketId(String? value) => setField<String>('ticket_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
