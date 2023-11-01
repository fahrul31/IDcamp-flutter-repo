import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:my_app/model/creator.dart';
import 'package:my_app/model/review.dart';

Future<CreatorsResults> loadData() async {
  final String jsonString = await rootBundle.loadString('assets/sample.json');
  final data = await json.decode(jsonString);
  if (jsonString != Null) {
    return CreatorsResults.fromJson(data);
  } else {
    throw Exception('Failed to load list creators');
  }
}

Future<ReviewsResults> loadDataReviews() async {
  final String jsonString = await rootBundle.loadString('assets/sample_2.json');
  final data = await json.decode(jsonString);
  if (jsonString != Null) {
    return ReviewsResults.fromJson(data);
  } else {
    throw Exception('Failed to load list reviews');
  }
}
