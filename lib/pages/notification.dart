import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/tabs/home_page.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Notifications'),
        centerTitle: true,
        leading:IconButton(
          onPressed:()=>Get.off(HomePage()),
          icon:Icon(Icons.arrow_back),
        )
      ),
      backgroundColor: const Color(0xFFF3DDDD),
    );
  }
}