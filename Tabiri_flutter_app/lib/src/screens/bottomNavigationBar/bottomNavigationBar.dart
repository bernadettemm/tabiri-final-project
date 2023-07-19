// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print, curly_braces_in_flow_control_structures, depend_on_referenced_packages, library_private_types_in_public_api, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:tabiri/src/screens/home/homepage.dart';
import 'package:tabiri/src/screens/profile/profile.dart';
import 'package:tabiri/src/screens/read/read.dart';
import 'package:tabiri/src/utils/app_const.dart';

class bottomNavigations extends StatefulWidget {
  const bottomNavigations({Key? key}) : super(key: key);

  @override
  _bottomNavigationsState createState() => _bottomNavigationsState();
}

class _bottomNavigationsState extends State<bottomNavigations> {
  int index = 0;
  final Screen = [
    Homepage(),
    HeartDiseasePage(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            body: Screen[index],
            extendBody: true,
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: AppConst.black,
                primaryColor: AppConst.black,
              ),
              child: BottomNavigationBar(
                selectedItemColor: AppConst.primary,
                unselectedItemColor: AppConst.secondary,
                backgroundColor: AppConst.black,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.book), label: 'Read More'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_search_sharp), label: 'Profile'),
                ],
                currentIndex: index,
                onTap: (index) {
                  if (mounted) setState(() => this.index = index);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
