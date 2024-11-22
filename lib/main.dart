import 'package:flutter/material.dart';
import 'package:gongting/signin.dart';
import 'package:gongting/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _buildMain(), // 메인 콘텐츠를 화면 중앙에 배치
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: _buildBtn(), // 버튼을 하단에 고정
      ),
    );
  }

  Widget _buildMain() {
    return Column(
      mainAxisSize: MainAxisSize.min, // 자식 크기만큼만 차지
      children: [
        Image.asset(
          'images/logo.png',
          width: 150,
        ),
        Text(
          '공팅',
          style: TextStyle(
            color: Color(0xFF111111),
            fontSize: 32,
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10),
        Text(
          '한국공대 블라인드 매칭 서비스',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF111111),
            fontSize: 14,
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildBtn() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 45),
      child: Column(
        mainAxisSize: MainAxisSize.min, // 자식 크기만큼만 차지
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(228, 225, 253, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text(
                '로그인',
                style: TextStyle(
                  fontSize: 15
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SigninPage()),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(126, 107, 242, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text(
                '회원가입',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
