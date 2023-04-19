import 'package:flutter/material.dart';
import 'project1/home.dart';
import 'project1/add.dart';
import 'project1/update.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('donor');

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BDK',
      routes: {
        '/': (context) => const HomePage(),
        '/add': (context) => const AddUser(),
        '/update': (context) => const UpdateDonor(),
      },
      initialRoute: '/',
    );
  }
}
