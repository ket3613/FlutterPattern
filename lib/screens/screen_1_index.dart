import 'package:flutter/material.dart';
import 'package:widetns_app/app_confige.dart';

class Screens1Index extends StatelessWidget {
  const Screens1Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('index'),
          onPressed: () {
            // Named route를 사용하여 두 번째 화면으로 전환합니다.
          },
        ),
      ),
      drawer:   Drawer(
        child: ListView(
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