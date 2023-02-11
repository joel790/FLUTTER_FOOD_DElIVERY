import 'package:flutter/material.dart';
import 'package:project1/screens/login_screen.dart';
import 'package:project1/tabs/cart_page.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'model/product_state.dart';
import 'tabs/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductState()),
      ],
      child:GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
