import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tabiri/routes/route-names.dart';
import 'package:tabiri/src/functions/splash.dart';
import 'package:tabiri/src/service/profile.dart';
import 'package:tabiri/src/utils/app_const.dart';
import 'package:tabiri/src/widgets/app_base_screen.dart';
import 'package:tabiri/src/widgets/app_text.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  var email;
  var profileData;
  @override
  void initState() {
    super.initState();
    getHome();
  }

  Future<void> getHome() async {
    final SplashFunction _splashService = await SplashFunction();
    final profileService profile = await profileService();
    final String email = await _splashService.getEmail();
    final profileData = await profile.profile(context, email);

    setState(() {
      this.email = email;
      this.profileData = profileData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
        bgcolor: AppConst.secondary,
        appBar: AppBar(
          centerTitle: false,
          title: AppText(
            txt: 'My Profile',
            size: 20,
            weight: FontWeight.bold,
            color: AppConst.secondary,
          ),
          automaticallyImplyLeading: true,
          backgroundColor: AppConst.black,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                  backgroundColor: AppConst.primary,
                  radius: 70,
                  child: Icon(
                    Icons.person,
                    color: AppConst.secondary,
                    size: 100,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            AppText(
              txt: profileData != null
                  ? profileData[0]['fullname']
                  : 'loading...',
              size: 15,
              weight: FontWeight.bold,
              color: AppConst.black,
            ),
            AppText(
              txt: 'Edit profile',
              size: 15,
              color: AppConst.primary,
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              tileColor: AppConst.secondary,
              leading: Icon(
                Icons.mail,
                color: AppConst.black,
              ),
              title: AppText(
                txt: profileData != null
                    ? profileData[0]['email']
                    : 'loading...',
                size: 15,
                color: AppConst.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              tileColor: AppConst.secondary,
              leading: Icon(
                Icons.phone,
                color: AppConst.black,
              ),
              title: AppText(
                txt: profileData != null
                    ? profileData[0]['phone']
                    : 'loading...',
                size: 15,
                color: AppConst.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              tileColor: AppConst.secondary,
              leading: Icon(
                Icons.logout,
                color: AppConst.black,
              ),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.clear();
                Navigator.pushNamedAndRemoveUntil(
                    context, RouteNames.login, (_) => false);
              },
              title: AppText(
                txt: 'Logout',
                size: 15,
                color: AppConst.black,
              ),
            )
          ],
        ));
  }
}
