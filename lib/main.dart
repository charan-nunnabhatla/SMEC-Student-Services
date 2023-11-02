import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:stmarys/pages/services.dart';
import 'firebase_options.dart';
import 'package:stmarys/pages/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const StMarys());
}

class StMarys extends StatefulWidget {
  const StMarys({super.key});

  @override
  State<StMarys> createState() => StMarysState();
}

class StMarysState extends State<StMarys> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: StudentServices(),
    );
  }
}
