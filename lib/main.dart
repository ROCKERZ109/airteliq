import 'package:flutter/material.dart';
import 'botscreen.dart';
import 'splashscreen.dart';
import 'changed.dart';
Future main()async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Changed(),
    );
  }
}
