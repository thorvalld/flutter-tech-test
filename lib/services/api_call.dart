import 'dart:convert';

import 'package:flutter/services.dart';

class APIServices{
  Future<List<dynamic>> readJson() async {
    final String response = await rootBundle.loadString('assets/data/offered_shifts.json');
    final data = await json.decode(response);
    return data["data"];
  }
}