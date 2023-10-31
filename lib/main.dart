// ignore_for_file: prefer_const_constructors
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:project1/form/foodForm.dart';
import 'package:project1/form/googleMapAPI.dart';
import 'package:project1/form/marButton.dart';
import 'package:project1/form/marFormBook.dart';
import 'package:project1/form/marFormClothes.dart';
import 'package:project1/form/marFormFood.dart';
import 'package:project1/form/seeRequest.dart';
import 'package:project1/form/seeRequestFood.dart';
import 'package:project1/pages/Signup_page.dart';
import 'package:project1/pages/buttons.dart';
import 'package:project1/pages/login_page.dart';
import 'package:project1/pages/maintab.dart';
import 'form/acceptFood.dart';
import 'form/clothesForm.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(debug: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("something went wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
              title: 'Daan',
              theme: ThemeData(primaryColor: Colors.blue),
              debugShowCheckedModeBanner:
                  false, //removing red band on right top corner
              home: Loginsrc());
          //home: buttons());
          //home: seeRequest());
          //home: marFormFood());
          //home: foodForm());
          //home: clothesForm());
          // home: acceptFood());
          //home: MainTab());
          //home: Signup_page());
          //home: marFormClothes());
          //home: acceptFoodLoc());
          //home: contactInfo());
          // home: googleMapAPI());
        });
  }
}
