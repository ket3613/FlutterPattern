
import 'package:flutter/material.dart';

class Screens2MyPage extends StatelessWidget {
  const Screens2MyPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Container(
          child: Text("Mypage"),
        ),
      ),
      drawer:   Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('메뉴정보'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/mainMenu');
              },
            ),
            ListTile(
              title: Text('마이페이지'),
              onTap: () {
                Navigator.pushNamed(context, '/myPage');
              },
            ),
            ListTile(
              title: Text('전자결재'),
              onTap: () {
                Navigator.pushNamed(context, '/messageBox');
              },
            ),
            ListTile(
              title: Text('영수증 관리'),
              onTap: () {
                Navigator.pushNamed(context, '/receiptManagement');
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }

}