import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:handy_notes/core/models/user/user_model.dart';

part 'serializers.g.dart';

//add all of the built value types that require serialization
@SerializersFor([
 UserEntity,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
