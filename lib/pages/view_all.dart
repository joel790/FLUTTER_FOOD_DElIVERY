import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/tabs/home_page.dart';
class ViewAll extends StatelessWidget {
  const ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: ()=>Get.off(HomePage()),
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          title: Text('GESH HOTEL'),
          centerTitle: true,
          ),
        );
       
       
    
  }
}