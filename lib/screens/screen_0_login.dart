import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/model_query.dart';

class Screens0Login extends StatelessWidget {
  final TextEditingController controllerUserId = TextEditingController();
  final TextEditingController controllerUserPw = TextEditingController();
  Map resultDataMap = {};

  Screens0Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  child: Image.asset("assets/WideTNS_Logo_CMYK.jpg",
                  )
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 250,
                  height: 50,
                  child: TextField(
                      controller: controllerUserId,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ID 입력',
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 250,
                  height: 50,
                  child: TextField(
                      controller: controllerUserPw,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'PassWord 입력',
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      UserSessionInfo().reset();
                      test(context);
                    },
                    child:
                      Text('로그인 버튼'),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  test(BuildContext context) async {
    try {
      var response = await Dio().get('http://127.0.0.1:9082/cmn/login_chk.ajax',
          queryParameters: {'user_id': controllerUserId.text.toString(), 'user_pw': controllerUserPw.text.toString()});
      resultDataMap = {};
      resultDataMap.addAll(response.data);
      print(response.data);
      print(resultDataMap['user_id']);
      if(resultDataMap['user_id'] != null && resultDataMap['user_pw'] != null){
        UserSessionInfo().user_id = resultDataMap['user_id'];
        UserSessionInfo().user_nm = resultDataMap['user_nm'];
        UserSessionInfo().user_pw = resultDataMap['user_pw'];
        Navigator.pushNamed(context, '/mainMenu');
      }else{
        print(resultDataMap['user_id']);
        print("답이없다");
        final snackBar = SnackBar(
            content: const Text('로그인 실패입니다.')
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }

    } catch (e) {
      print(e);
    }
  }

}


