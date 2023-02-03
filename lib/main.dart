import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import 'src/stores/base_store.dart';
import 'src/utils/environment.dart';
import 'src/view/base/base_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupManager();

  await dotenv.load(fileName: Environment.fileName);
  runApp(const MyApp());
}

void setupManager() async {
  GetIt.I.registerSingleton(BaseStore());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BaseScreen(),
    );
  }
}


