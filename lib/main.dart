import 'package:flutter/material.dart';

import './presentation/app.dart';
import 'injection/dependency_manager.dart';

void main() {
  // NOTE: This is required for accessing the method channel before runApp().
  WidgetsFlutterBinding.ensureInitialized();
  DependencyManager.inject();
  runApp(const App());
}
