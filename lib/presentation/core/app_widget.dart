import 'package:flutter/material.dart';
import 'package:shattered_star/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shattered Star Player's Guide",
      home: SignInPage(),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.lightBlueAccent[100],
        // primaryColor: Colors.orange[200],

        accentColor: Colors.orangeAccent,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
        ),
      ),
    );
  }
}
