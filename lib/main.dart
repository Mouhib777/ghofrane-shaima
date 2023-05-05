import 'package:e_learning/cours/cour%201.dart';
import 'package:e_learning/provider/image.dart';
import 'package:e_learning/screens/homeScreen.dart';
import 'package:e_learning/screens/login.dart';
import 'package:e_learning/screens/registreScreen.dart';
import 'package:e_learning/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ghofrane+shaima',
      builder: EasyLoading.init(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: splashSCreen(
          // isAdmin: false,
          ),
    );
  }
}
