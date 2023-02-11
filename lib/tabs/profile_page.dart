// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/nav_bar.dart';
import 'package:project1/screens/login_screen.dart';
import 'package:project1/tabs/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavBar(indexNum: 3),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            // color: Colors.grey
            image: DecorationImage(
                image: AssetImage('food4.jpg'), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 120,
                  left: 40,
                  right: 40,
                  child: Container(
                    width: 300,
                    height: 330,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                       ListTile(
                          title:InkWell(
                           
                              onTap: () {},
                              child: Text(
                                'Home',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          leading: Icon(
                            Icons.home,
                            color: Colors.blue,
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                       ListTile(
                          title:InkWell(
                            
                              onTap: () =>Get.to(HomePage()),
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          leading: Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        ListTile(
                          title: InkWell(
                             splashColor: Colors.green,
                            onTap: () {},
                            child: Text(
                              'History',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          leading: Icon(
                            Icons.history,
                            color: Colors.blue,
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        ListTile(
                          title:InkWell(
                             splashColor: Colors.green,
                              onTap: () {},
                              child: Text(
                                'Addresss',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          leading: Icon(
                            Icons.location_pin,
                            color: Colors.red,
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        ListTile(
                          title:InkWell(
                             splashColor: Colors.green,
                              onTap: () {},
                              child: Text(
                                'Change Password',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          leading: Icon(
                            Icons.lock,
                            color: Colors.blueAccent,
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  bottom: 50,
                  left: 40,
                  right: 40,
                  child: Container(
                    color: Colors.redAccent,
                    child: ListTile(
                      title: TextButton(
                          onPressed: () => Get.to(LoginScreen()),
                          child: Text(
                            'Logout',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      leading: Icon(
                        Icons.logout_outlined,
                        color: Colors.black,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  )),
              const Positioned(
                  top: 87,
                  left: 160,
                  child: CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: Image(
                          fit: BoxFit.fill, image: AssetImage('joel.jpg')),
                    ),
                  ))
            ],
          ),
        ));
  }
}
