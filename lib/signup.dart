import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _studentNumController = TextEditingController();

  bool _isServiceChecked = false;
  bool _isPrivateChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "회원가입",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _InputWidget(),
          SizedBox(height: 10),
          _AgreeCheckBox(),
          SizedBox(height: 40),
          _SignupBtn(),
          SizedBox(height: 20),
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
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '이름',
                  style: TextStyle(
                    color: Color(0xFF111111),
                    fontSize: 12,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  child: TextField(
                    controller: _nameController, // 컨트롤러 설정
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10), // 기존 패딩 유지
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // 둥근 정도 설정
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFFE2E2E2), // 테두리 색상
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFFE2E2E2), // 비활성화 상태 테두리 색상
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFF5E5E5E), // 포커스 상태 테두리 색상
                        ),
                      ),
                      labelText: "아이디를 입력하세요", // 레이블 텍스트
                      labelStyle: const TextStyle(
                        color: Color(0xFF5E5E5E), // 레이블 색상
                        fontSize: 14,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                        height: 0, // 라인 높이
                      ),
                      filled: true,
                      fillColor: Colors.white, // 배경색
                    ),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5E5E5E),
                    ), // 입력 텍스트 스타일
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '이메일',
                  style: TextStyle(
                    color: Color(0xFF111111),
                    fontSize: 12,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  child: TextField(
                    controller: _emailController, // 컨트롤러 설정
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10), // 기존 패딩 유지
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // 둥근 정도 설정
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFFE2E2E2), // 테두리 색상
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFFE2E2E2), // 비활성화 상태 테두리 색상
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFF5E5E5E), // 포커스 상태 테두리 색상
                        ),
                      ),
                      labelText: "이메일을 입력하세요", // 레이블 텍스트
                      labelStyle: const TextStyle(
                        color: Color(0xFF5E5E5E), // 레이블 색상
                        fontSize: 14,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                        height: 0, // 라인 높이
                      ),
                      filled: true,
                      fillColor: Colors.white, // 배경색
                    ),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5E5E5E),
                    ), // 입력 텍스트 스타일
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '학번',
                  style: TextStyle(
                    color: Color(0xFF111111),
                    fontSize: 12,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  child: TextField(
                    controller: _studentNumController, // 컨트롤러 설정
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10), // 기존 패딩 유지
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // 둥근 정도 설정
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFFE2E2E2), // 테두리 색상
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFFE2E2E2), // 비활성화 상태 테두리 색상
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFF5E5E5E), // 포커스 상태 테두리 색상
                        ),
                      ),
                      labelText: "학번을 입력하세요", // 레이블 텍스트
                      labelStyle: const TextStyle(
                        color: Color(0xFF5E5E5E), // 레이블 색상
                        fontSize: 14,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                        height: 0, // 라인 높이
                      ),
                      filled: true,
                      fillColor: Colors.white, // 배경색
                    ),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5E5E5E),
                    ), // 입력 텍스트 스타일
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '비밀번호',
                  style: TextStyle(
                    color: Color(0xFF111111),
                    fontSize: 12,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  child: TextField(
                    controller: _passwordController, // 컨트롤러 설정
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10), // 기존 패딩 유지
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // 둥근 정도 설정
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFFE2E2E2), // 테두리 색상
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFFE2E2E2), // 비활성화 상태 테두리 색상
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFF5E5E5E), // 포커스 상태 테두리 색상
                        ),
                      ),
                      labelText: "비밀번호를 입력하세요", // 레이블 텍스트
                      labelStyle: const TextStyle(
                        color: Color(0xFF5E5E5E), // 레이블 색상
                        fontSize: 14,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                        height: 0, // 라인 높이
                      ),
                      filled: true,
                      fillColor: Colors.white, // 배경색
                    ),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5E5E5E),
                    ), // 입력 텍스트 스타일
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  child: TextField(
                    controller: _passwordController, // 컨트롤러 설정
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10), // 기존 패딩 유지
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // 둥근 정도 설정
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFFE2E2E2), // 테두리 색상
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFFE2E2E2), // 비활성화 상태 테두리 색상
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xFF5E5E5E), // 포커스 상태 테두리 색상
                        ),
                      ),
                      labelText: "다시 비밀번호를 입력하세요", // 레이블 텍스트
                      labelStyle: const TextStyle(
                        color: Color(0xFF5E5E5E), // 레이블 색상
                        fontSize: 14,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                        height: 0, // 라인 높이
                      ),
                      filled: true,
                      fillColor: Colors.white, // 배경색
                    ),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5E5E5E),
                    ), // 입력 텍스트 스타일
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _AgreeCheckBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: double.infinity, // 최대 너비로 설정
            height: 24,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 체크박스 추가
                      Checkbox(
                        value: _isServiceChecked, // 체크 여부 변수
                        onChanged: (bool? value) {
                          setState(() {
                            _isServiceChecked = value ?? false; // 상태 업데이트
                          });
                        },
                        activeColor: Color(0xFF7C67FF), // 활성화 색상
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          '[필수] 서비스 이용 약관에 동의',
                          style: const TextStyle(
                            color: Color(0xFF5E5E5E),
                            fontSize: 12,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                            height: 1.2, // 라인 높이 수정
                          ),
                          overflow: TextOverflow.ellipsis, // 텍스트 오버플로 처리
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // '보기'를 눌렀을 때 동작
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('서비스 이용 약관'),
                        content: const Text('서비스 이용 약관 내용이 여기에 표시됩니다.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('닫기'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    height: 22,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '보기',
                          style: TextStyle(
                            color: Color(0xFFA0A0A0),
                            fontSize: 12,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w400,
                            height: 1.2, // 라인 높이 수정
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity, // 최대 너비로 설정
            height: 24,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 체크박스 추가
                      Checkbox(
                        value: _isPrivateChecked, // 체크 여부 변수
                        onChanged: (bool? value) {
                          setState(() {
                            _isPrivateChecked = value ?? false; // 상태 업데이트
                          });
                        },
                        activeColor: Color(0xFF7C67FF), // 활성화 색상
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          '[필수] 서비스 이용 약관에 동의',
                          style: const TextStyle(
                            color: Color(0xFF5E5E5E),
                            fontSize: 12,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                            height: 1.2, // 라인 높이 수정
                          ),
                          overflow: TextOverflow.ellipsis, // 텍스트 오버플로 처리
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // '보기'를 눌렀을 때 동작
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('개인정보 처리방침에 동의'),
                        content: const Text('개인정보 처리방침 약관 내용이 여기에 표시됩니다.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('닫기'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    height: 22,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '보기',
                          style: TextStyle(
                            color: Color(0xFFA0A0A0),
                            fontSize: 12,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w400,
                            height: 1.2, // 라인 높이 수정
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }


  Widget _SignupBtn(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: _isServiceChecked && _isPrivateChecked ? Color.fromRGBO(126, 107, 242, 1.0) : Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Text(
            '회원가입',
            style: TextStyle(
                fontSize: 15,
                color: Colors.white
            ),
          ),
          onPressed: () {
            // _isServiceChecked && _isPrivateChecked ? 회원가입 로직 실행 : 눌러도 실행 X
          },
        ),
      ),
    );
  }
}
