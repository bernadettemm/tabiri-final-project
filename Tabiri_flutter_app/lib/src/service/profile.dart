import 'package:flutter/material.dart';
import 'package:tabiri/src/connection/api.dart';

class profileService {
  Api api = Api();
  Future profile(BuildContext context, String email) async {
    Map<String, dynamic> data = {
      'email': email.toString(),
    };
    final response = await api.postAuth(context, 'profile/get.php', data);
    List datas = response;
    return datas;
  }
}
