import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'units.g.dart';

class Unit extends EnumClass {
  // static const Unit yes = _$yes;
  static const Unit item = _$item;
  static const Unit sum = _$sum;
  static const Unit meters = _$metres;
  static const Unit squaremeters = _$squaremeters;
  static const Unit cubicmeters = _$cubicmeters;
  const Unit._(String name) : super(name);

  static BuiltSet<Unit> get values => _$values;
  static Unit valueOf(String name) => _$valueOf(name);
}
