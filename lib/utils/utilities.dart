import 'package:quiz_app/models/category.dart';

String enumToString(CategoryEnum value) {
  return value.toString().split('.').last;
}
