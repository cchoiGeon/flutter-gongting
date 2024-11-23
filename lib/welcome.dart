import 'package:flutter/material.dart';
import 'package:gongting/userProfile.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
        Container(
          width: 144,
          height: 120,
          child: Stack(
            children: [
              Positioned(
                left: 67,
                top: 7,
                child: Container(
                  width: 77,
                  height: 77,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.89, 0.46),
                      end: Alignment(0.89, -0.46),
                      colors: [Color(0xFF646AFF), Color(0xFF7D67FF)],
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0x7FAFA1FF),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: Color(0xFFB2A5FF),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Text(
          '@@@님, 가입을 환영해요!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF111111),
            fontSize: 20,
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '공팅에서 새로운 인연을 만들어보세요.',
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
                backgroundColor: Color.fromRGBO(126, 107, 242, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text(
                '프로필 설정하러 가기',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfileSetting()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
