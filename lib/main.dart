import 'package:flutter/material.dart';

// importaciones de firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//Pages
import 'package:myapp/Pages/edit_name_page.dart';
import 'package:myapp/Pages/add_name_page.dart';
import 'package:myapp/Pages/home_page.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute:  '/',
      routes: {
        '/': (context) => const Home(),
        '/add': (context) => const AddNamePage(),
        '/edit': (context) => const EditNamePage()
        },
    );
  }}
 