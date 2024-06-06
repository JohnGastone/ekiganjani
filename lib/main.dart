import 'package:ekiganjani/screens/landingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());

  WidgetsFlutterBinding.ensureInitialized();

  // Set the app to fullscreen mode (hides the status bar and navigation bar)
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Landingscreen(),
    );
  }
}
