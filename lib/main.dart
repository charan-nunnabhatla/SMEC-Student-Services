import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

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
  State<StMarys> createState() => StMarysHome();
}

class StMarysHome extends State<StMarys> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
