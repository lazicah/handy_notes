import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

double round(double value, int precision) {
  if (value == null || value.isNaN) {
    return 0;
  }

  final int fac = pow(10, precision);
  return (value * fac).round() / fac;
}

int parseInt(String value, {bool zeroIsNull = false}) {
  value = value.replaceAll(RegExp(r'[^0-9\.\-]'), '');

  final intValue = int.tryParse(value) ?? 0;

  return (intValue == 0 && zeroIsNull) ? null : intValue;
}

double parseDouble(String value, {bool zeroIsNull = false}) {
  // check for comma as decimal separator
  final RegExp regExp = RegExp(r',[\d]{1,2}$');
  if (regExp.hasMatch(value)) {
    value = value.replaceAll('.', '');
    value = value.replaceAll(',', '.');
  }

  value = value.replaceAll(RegExp(r'[^0-9\.\-]'), '');

  final doubleValue = double.tryParse(value) ?? 0.0;

  return (doubleValue == 0 && zeroIsNull) ? null : doubleValue;
}

enum FormatNumberType {
  money, // $1,000.00
  percent, // 1,000.00%
  int, // 1,000
  double, // 1,000.00
  inputMoney, // 1000.00
  inputAmount, // 1000
  duration,
}

String cleanPhoneNumber(String phoneNumber) {
  return phoneNumber.replaceAll(RegExp(r'\D'), '');
}

String formatURL(String url) {
  if (url.startsWith('http')) {
    return url;
  }

  return 'http://' + url;
}

String formatAddress(
    {dynamic object, bool isShipping = false, String delimiter = '\n'}) {
  var str = '';

  final String address1 =
      (isShipping ? object.shippingAddress1 : object.address1) ?? '';
  final String address2 =
      (isShipping ? object.shippingAddress2 : object.address2) ?? '';
  final String city = (isShipping ? object.shippingCity : object.city) ?? '';
  final String state = (isShipping ? object.shippingState : object.state) ?? '';
  final String postalCode =
      (isShipping ? object.shippingPostalCode : object.postalCode) ?? '';

  if (address1.isNotEmpty) {
    str += address1 + delimiter;
  }
  if (address2.isNotEmpty) {
    str += address2 + delimiter;
  }

  if (city.isNotEmpty || state.isNotEmpty || postalCode.isNotEmpty) {
    str += city + ',' + state + ' ' + postalCode;
  }

  return str;
}

String convertDateTimeToSqlDate([DateTime date]) {
  date = date ?? DateTime.now();
  return date.toIso8601String().split('T').first;
}

DateTime convertTimestampToDate(int timestamp) =>
    DateTime.fromMillisecondsSinceEpoch((timestamp ?? 0) * 1000);

String convertTimestampToDateString(int timestamp) =>
    convertTimestampToDate(timestamp).toIso8601String();

String formatDuration(Duration duration, {bool showSeconds = true}) {
  final time = duration.toString().split('.')[0];

  if (showSeconds) {
    return time;
  } else {
    final parts = time.split(':');
    return '${parts[0]}:${parts[1]}';
  }
}

DateTime convertTimeOfDayToDateTime(TimeOfDay timeOfDay, DateTime dateTime) {
  dateTime ??= DateTime.now();
  return DateTime(dateTime.year, dateTime.month, dateTime.day,
          timeOfDay?.hour ?? 0, timeOfDay?.minute ?? 0)
      .toUtc();
}

TimeOfDay convertDateTimeToTimeOfDay(DateTime dateTime) =>
    TimeOfDay(hour: dateTime?.hour ?? 0, minute: dateTime?.minute ?? 0);

String formatDateRange(String startDate, String endDate, BuildContext context) {
  final today = DateTime.now();

  final startDateTime = DateTime.tryParse(startDate).toLocal();
  final startFormatter =
      DateFormat(today.year == startDateTime.year ? 'MMM d' : 'MMM d, yyy');
  final startDateTimeString = startFormatter.format(startDateTime);

  final endDateTime = DateTime.tryParse(endDate).toLocal();
  final endFormatter =
      DateFormat(today.year == endDateTime.year ? 'MMM d' : 'MMM d, yyy');
  final endDateTimeString = endFormatter.format(endDateTime);

  return '$startDateTimeString - $endDateTimeString';
}

String formatApiUrl(String url) => cleanApiUrl(url) + '/api/v1';

String cleanApiUrl(String url) => (url ?? '')
    .trim()
    .replaceFirst(RegExp(r'/api/v1'), '')
    .replaceFirst(RegExp(r'/$'), '');
