import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_validation/src/bloc/provider.dart';
import 'package:form_validation/src/pages/home_page.dart';
import 'package:form_validation/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));

    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QRReader',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'home': (BuildContext context) => HomePage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('My App AppBar'),
          ),
          body: Center(
            child: Container(
              child: Text(
                "Hello, world!",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
