import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:myapp/screens/ landing_page.dart';
import 'package:myapp/book.dart';
import 'package:myapp/user.dart';
import 'box.dart';
import 'book_data.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  //WidgetsFlutterBinding.ensureInitialized();


  await Hive.initFlutter();

  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(BookAdapter());

  BoxUser = await Hive.openBox<User>('myUsers');
  BoxBook = await Hive.openBox<Book>('cartItems');
  await Hive.openBox<Book>('cartBox');

  await addBooks(); // This adds books to 'booksBox'

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
