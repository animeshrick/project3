import 'package:barta/front/AgreeAndStar.dart';
import 'package:barta/frontpage_animation/LogoAnimation/BasicAnimationPage.dart';
import 'package:barta/frontpage_animation/core/viewmodels/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'Theme/theme.dart';
//import 'front/1st_page.dart';
import 'frontpage_animation/ui/views/home_view.dart';



void main() => runApp( MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimationPage(),
      ),
    );
  }
}
