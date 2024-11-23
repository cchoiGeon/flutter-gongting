import 'package:flutter/material.dart';

class UserProfileSetting extends StatefulWidget {
  const UserProfileSetting({super.key});

  @override
  State<UserProfileSetting> createState() => _UserProfileSettingState();
}

class _UserProfileSettingState extends State<UserProfileSetting> {
  String? selectedGender;
  String? selectedAge;
  String? selectedDepartment;
  String? selectedYear;
  String? selectedSmoking;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "프로필 설정",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 프로그래스바를 AppBar 아래 상단에 위치
          _ProgressBar(),
          _buildMain(),
        ],
      ),
    );
  }

  Widget _ProgressBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 4,
        child: Stack(
          children: [
            // 배경 회색 막대
            Container(
              width: double.infinity,
              height: 4,
              decoration: BoxDecoration(
                color: Color(0xFFEAE9E9),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            // 진행 표시 보라색 막대
            Positioned(
              left: 0,
              child: Container(
                width: 47, // 진행률에 따라 너비 조절 가능
                height: 4,
                decoration: BoxDecoration(
                  color: Color(0xFF7C67FF),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMain() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: double.infinity,
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '내 정보',
                style: TextStyle(
                  color: Color(0xFF111111),
                  fontSize: 24,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '상대방과 매칭 시 보여지는 필수항목이에요.',
                style: TextStyle(
                  color: Color(0xFF898989),
                  fontSize: 12,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildDropdown("성별", selectedGender, (value) {
                setState(() {
                  selectedGender = value;
                });
              }, ["남성", "여성", "기타"]),
              SizedBox(height: 16),
              _buildDropdown("나이", selectedAge, (value) {
                setState(() {
                  selectedAge = value;
                });
              }, ["20대", "30대", "40대"]),
              SizedBox(height: 16),
              _buildDropdown("학과", selectedDepartment, (value) {
                setState(() {
                  selectedDepartment = value;
                });
              }, ["컴퓨터공학", "전자공학", "기타"]),
              SizedBox(height: 16),
              _buildDropdown("학년", selectedYear, (value) {
                setState(() {
                  selectedYear = value;
                });
              }, ["1학년", "2학년", "3학년", "4학년"]),
              SizedBox(height: 16),
              _buildDropdown("흡연 여부", selectedSmoking, (value) {
                setState(() {
                  selectedSmoking = value;
                });
              }, ["예", "아니오"]),
            ],
          ),
        ),
        SizedBox(height: 100),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SizedBox(
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
                '다음',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserProfileSetting(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown(String hint, String? value, Function(String?) onChanged, List<String> items) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: Text(hint),
          items: items.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: onChanged,
          icon: Icon(Icons.arrow_drop_down),
          isExpanded: true,
          dropdownColor: Colors.white,
        ),
      ),
    );
  }
}
