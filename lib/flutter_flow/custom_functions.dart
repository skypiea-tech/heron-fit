import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

bool? isSessionAvailable(
  String? session,
  DateTime? date,
  List<SessionsRow>? sessions,
) {
  if (sessions == null ||
      sessions.isEmpty ||
      session == null ||
      session.isEmpty ||
      date == null) {
    return null;
  }

  final now = DateTime.now();

  DateTime? sessionEndTime;

  if (session == "8:00 AM - 9:00 AM") {
    sessionEndTime = DateTime(now.year, now.month, now.day, 9, 0);
  } else if (session == "9:00 AM - 10:00 AM") {
    sessionEndTime = DateTime(now.year, now.month, now.day, 10, 0);
  } else if (session == "10:00 AM - 11:00 AM") {
    sessionEndTime = DateTime(now.year, now.month, now.day, 11, 0);
  } else if (session == "11:00 AM - 12:00 PM") {
    sessionEndTime = DateTime(now.year, now.month, now.day, 12, 0);
  } else if (session == "12:00 PM - 1:00 PM") {
    sessionEndTime = DateTime(now.year, now.month, now.day, 13, 0);
  } else if (session == "1:00 PM - 2:00 PM") {
    sessionEndTime = DateTime(now.year, now.month, now.day, 14, 0);
  } else if (session == "2:00 PM - 3:00 PM") {
    sessionEndTime = DateTime(now.year, now.month, now.day, 15, 0);
  } else if (session == "3:00 PM - 4:00 PM") {
    sessionEndTime = DateTime(now.year, now.month, now.day, 16, 0);
  } else if (session == "4:00 PM - 5:00 PM") {
    sessionEndTime = DateTime(now.year, now.month, now.day, 17, 0);
  } else {
    return null;
  }

  if (date.isBefore(now) ||
      (filterSessionsByTime(sessions, session, date)! > 14) ||
      (now.isAfter(sessionEndTime) && DateUtils.isSameDay(now, date))) {
    return true;
  }

  return false;
}

int? countRows(List<SessionsRow>? time) {
  return time?.length ?? 0;
}

int? filterSessionsByTime(
  List<SessionsRow>? sessions,
  String? sessionTime,
  DateTime? selectedDate,
) {
  if (sessions == null || sessionTime == null || selectedDate == null) {
    return 0; // Return 0 if any parameter is null
  }

  // Filter the sessions by both time and date
  int count = sessions.where((session) {
    return session.time == sessionTime && session.date == selectedDate;
  }).length;

  return count;
}
