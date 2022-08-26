import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int convertStringToInt(String someString) {
  return int.parse(someString);
}

bool isToday(DateTime date) {
  DateTime now = DateTime.now();
  return DateTime(date.year, date.month, date.day)
          .difference(DateTime(now.year, now.month, now.day))
          .inDays ==
      0;
}

DateTime getTodayDate() {
  DateTime now = DateTime.now();
  DateTime date = DateTime(now.year, now.month, now.day);
  return date;
}

DateTime getTodayEnd() {
  var now = DateTime.now();
  var lastMidnight =
      DateTime(now.year, now.month, now.day).add(const Duration(days: 1));
  return lastMidnight;
}

DateTime getTodayStart() {
  var now = DateTime.now();
  var yesterdayMidnight = DateTime(now.year, now.month, now.day);
  return yesterdayMidnight;
}

String convertUserRefToString(DocumentReference userRef) {
  return userRef.toString();
}

DocumentReference checkIfUserAorUserB(
  DocumentReference userA,
  DocumentReference userB,
  DocumentReference? authUserRef,
) {
  if (authUserRef == userA) return userB;
  return userA;
}
