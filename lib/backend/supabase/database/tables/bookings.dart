import '../database.dart';

class BookingsTable extends SupabaseTable<BookingsRow> {
  @override
  String get tableName => 'bookings';

  @override
  BookingsRow createRow(Map<String, dynamic> data) => BookingsRow(data);
}

class BookingsRow extends SupabaseDataRow {
  BookingsRow(super.data);

  @override
  SupabaseTable get table => BookingsTable();

  String get bookingId => getField<String>('booking_id')!;
  set bookingId(String value) => setField<String>('booking_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get bookinguserId => getField<String>('bookinguser_id');
  set bookinguserId(String? value) => setField<String>('bookinguser_id', value);

  String? get bookingstatusTxt => getField<String>('bookingstatus_txt');
  set bookingstatusTxt(String? value) =>
      setField<String>('bookingstatus_txt', value);

  int? get bookingstatusInt => getField<int>('bookingstatus_int');
  set bookingstatusInt(int? value) => setField<int>('bookingstatus_int', value);

  String? get ticketIDstatusTxt => getField<String>('ticketIDstatus_txt');
  set ticketIDstatusTxt(String? value) =>
      setField<String>('ticketIDstatus_txt', value);

  bool? get ticketIDstatusIsVerified =>
      getField<bool>('ticketIDstatus_isVerified');
  set ticketIDstatusIsVerified(bool? value) =>
      setField<bool>('ticketIDstatus_isVerified', value);

  String? get bookingslot => getField<String>('bookingslot');
  set bookingslot(String? value) => setField<String>('bookingslot', value);

  String? get ticketId => getField<String>('ticket_id');
  set ticketId(String? value) => setField<String>('ticket_id', value);

  String? get bookinguserEmail => getField<String>('bookinguser_email');
  set bookinguserEmail(String? value) =>
      setField<String>('bookinguser_email', value);
}
