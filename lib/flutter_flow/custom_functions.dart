import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
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
    return true;
  }

  if (DateUtils.isSameDay(now, date)) {
    if (now.isAfter(sessionEndTime!)) {
      return true;
    }
  } else if (date.isBefore(now)) {
    return true;
  }

  if (filterSessionsByTime(sessions, session, date)! > 14) {
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

int? calculateAge(DateTime? birthday) {
  if (birthday == null) {
    return null;
  }

  final now = DateTime.now();
  int age = now.year - birthday.year;

  // Adjust the age if the current date is before the user's birthday this year
  if (now.month < birthday.month ||
      (now.month == birthday.month && now.day < birthday.day)) {
    age--;
  }

  return age;
}

String? mapGoalIndexToDescription(int? index) {
  const goals = [
    "Lose Weight",
    "Gain Muscle",
    "Overall Fitness",
  ];

  // Handle null or out-of-bounds indices
  if (index == null || index < 0 || index >= goals.length) {
    return null; // Return null for invalid indices
  }

  return goals[index];
}

bool? isDateValid(DateTime? selectedDate) {
  if (selectedDate == null) {
    return false;
  }

  final now = DateTime.now();

  if (selectedDate.weekday == DateTime.saturday ||
      selectedDate.weekday == DateTime.sunday) {
    return false;
  }

  if (selectedDate.isBefore(now)) {
    return false;
  }

  return true;
}

String? capitalizeName(String? name) {
  if (name == null || name.isEmpty) return '';
  return name[0].toUpperCase() + name.substring(1).toLowerCase();
}

String? getCurrentSession() {
  final now = DateTime.now();

  if (now.isAfter(DateTime(now.year, now.month, now.day, 8, 0)) &&
      now.isBefore(DateTime(now.year, now.month, now.day, 9, 0))) {
    return "8:00 AM - 9:00 AM";
  } else if (now.isAfter(DateTime(now.year, now.month, now.day, 9, 0)) &&
      now.isBefore(DateTime(now.year, now.month, now.day, 10, 0))) {
    return "9:00 AM - 10:00 AM";
  } else if (now.isAfter(DateTime(now.year, now.month, now.day, 10, 0)) &&
      now.isBefore(DateTime(now.year, now.month, now.day, 11, 0))) {
    return "10:00 AM - 11:00 AM";
  } else if (now.isAfter(DateTime(now.year, now.month, now.day, 11, 0)) &&
      now.isBefore(DateTime(now.year, now.month, now.day, 12, 0))) {
    return "11:00 AM - 12:00 PM";
  } else if (now.isAfter(DateTime(now.year, now.month, now.day, 12, 0)) &&
      now.isBefore(DateTime(now.year, now.month, now.day, 13, 0))) {
    return "12:00 PM - 1:00 PM";
  } else if (now.isAfter(DateTime(now.year, now.month, now.day, 13, 0)) &&
      now.isBefore(DateTime(now.year, now.month, now.day, 14, 0))) {
    return "1:00 PM - 2:00 PM";
  } else if (now.isAfter(DateTime(now.year, now.month, now.day, 14, 0)) &&
      now.isBefore(DateTime(now.year, now.month, now.day, 15, 0))) {
    return "2:00 PM - 3:00 PM";
  } else if (now.isAfter(DateTime(now.year, now.month, now.day, 15, 0)) &&
      now.isBefore(DateTime(now.year, now.month, now.day, 16, 0))) {
    return "3:00 PM - 4:00 PM";
  } else if (now.isAfter(DateTime(now.year, now.month, now.day, 16, 0)) &&
      now.isBefore(DateTime(now.year, now.month, now.day, 17, 0))) {
    return "4:00 PM - 5:00 PM";
  } else {
    return "No Sessions";
  }
}

String? formatInstructions(List<String>? instructions) {
  return instructions?.join('\n\n') ?? "";
}

String? convertToSentenceCase(String? text) {
  if (text == null || text.isEmpty) {
    return text;
  }

  List<String> words = text.split(' ');
  if (words.length > 1) {
    return words
        .map((word) =>
            word.substring(0, 1).toUpperCase() +
            word.substring(1).toLowerCase())
        .join(' ');
  } else {
    return text.substring(0, 1).toUpperCase() + text.substring(1).toLowerCase();
  }
}
