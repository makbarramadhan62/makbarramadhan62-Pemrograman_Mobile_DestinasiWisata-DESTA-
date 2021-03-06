import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubes_1/providers/authentication.dart';
import 'package:tubes_1/providers/reviews.dart';
import 'package:tubes_1/screens/login/login.dart';
import 'package:tubes_1/screens/review/add_review_page.dart';
import 'package:tubes_1/screens/review/detail_review_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Authentication(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Reviews(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tubes',
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: LoginScreen(),
        routes: {
          AddReview.routeName: (context) => AddReview(),
          DetailReview.routeName: (context) => DetailReview(),
        },
      ),
    );
  }
}
