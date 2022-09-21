import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacterInfo extends StatefulWidget {
  final String status;
  final String name;
  final String birthday;
  final String nickname;
  final String portrayed;
  const CharacterInfo({
    Key? key,
    required this.status,
    required this.name,
    required this.birthday,
    required this.nickname,
    required this.portrayed,
  }) : super(key: key);

  @override
  State<CharacterInfo> createState() => _CharacterInfoState();
}

class _CharacterInfoState extends State<CharacterInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 10.w, bottom: 90.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Name:",
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              ),
              Text(
                widget.name,
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date of Born:",
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              ),
              Text(
                widget.birthday,
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status:",
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              ),
              Text(
                widget.status,
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nickname:",
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              ),
              Text(
                widget.nickname,
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Portrayed:",
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              ),
              Text(
                widget.portrayed,
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              )
            ],
          ),
        ],
      ),
    );
  }
}
