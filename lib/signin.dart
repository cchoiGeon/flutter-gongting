import 'package:flutter/material.dart';
import 'package:gongting/signup.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "로그인",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _InputWidget(),
          SizedBox(
            height: 20,
          ),
          _RediretSignupPage(),
        ],
      ),
    );
  }
  Widget _InputWidget () {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // 둥근 정도 설정
              ),
              labelText: "아이디를 입력하세요",
              labelStyle: TextStyle(
                color: Color(0xFF5E5E5E),
                fontSize: 14,
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w500,
                height: 0,
              )
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // 둥근 정도 설정
                ),
                labelText: "비밀번호를 입력하세요",
                labelStyle: TextStyle(
                  color: Color(0xFF5E5E5E),
                  fontSize: 14,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w500,
                  height: 0,
                )
            ),
          ),
          SizedBox(height: 40),
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
                '로그인',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),
              ),
              onPressed: () {
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _RediretSignupPage(){
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignupPage()),
        );
      },
      child: Container(
        width: 142,
        height: 16,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '처음이신가요?',
              style: TextStyle(
                color: Color(0xFF949494),
                fontSize: 12,
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w500,
                height: 0.11,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '회원가입',
                    style: TextStyle(
                      color: Color(0xFF7C67FF),
                      fontSize: 12,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
