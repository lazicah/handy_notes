import 'package:handy_notes/core/state/controllers/notes_controller.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'core/state/controllers/app_controller.dart';
import 'core/state/controllers/auth_controller.dart';

//Place All ChangeNotifierProvider's separated by a comma ","
List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildWidget> independentServices = [
  ChangeNotifierProvider(create: (context) => AppController()),
  ChangeNotifierProvider(create: (context) => AuthController()),
  ChangeNotifierProvider(create: (context) => NotesController()),
];

List<SingleChildWidget> dependentServices = [];
List<SingleChildWidget> uiConsumableProviders = [];
