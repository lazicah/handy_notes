import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'pagetype.g.dart';

class PageType extends EnumClass {
  // static const PageType yes = _$yes;
  static const PageType overview = _$overview;
  static const PageType preliminaries = _$preliminaries;
  static const PageType substructure = _$substructure;
  static const PageType superstructure = _$superstructure;
  static const PageType material = _$material;
  static const PageType labour = _$labour;
  static const PageType rates = _$rates;
  const PageType._(String name) : super(name);

  static BuiltSet<PageType> get values => _$values;
  static PageType valueOf(String name) => _$valueOf(name);
}
