import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fe_flutter/service/userServer.dart';
import 'package:fe_flutter/model/userModel.dart';
import 'package:flutter/services.dart';

class MyPageEdit extends StatefulWidget {
  final User user;
  const MyPageEdit({required this.user});
  @override
  _MyPageEditState createState() => _MyPageEditState();
}

class _MyPageEditState extends State<MyPageEdit> {
  late User user = widget.user;
  final List<bool> _isSelectedGender = [false, false];
  late bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
      if (user.userGender == true) {
        _isSelectedGender[0] = true;
      } else {
        _isSelectedGender[1] = true;
      }

      if (user.alarm == true) {
        _isChecked = true;
      } else {
        _isChecked = false;
      }
    return Scaffold(
      appBar: AppBar(
        title: const Text('마이 페이지'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 60,),
            Stack(
              children: [
                ClipOval(
                  child: Image.network(
                    user?.userImage?.isNotEmpty == true
                        ? user!.userImage!
                        : 'https://lh4.googleusercontent.com/proxy/bQv_EtcQG0meeYE0BAKd83kzayElQTnqCxfAp0BRZef5NFYq9EhZdRlClAg0Myr-FVEdwQL3x4eNtvnRJoU7Suk2SuHLiGc_bhNCF2OrkBQ-Mu78ggZfvdxarEjxnnziV3bHCUq_13FG9uGooD5RX8UBEfAAElV8vr5OI958-5bOVQ',

                    width: 122,
                    height: 122,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      print('Image Selected');
                    },
                    child: 
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        alignment: const Alignment(0, 0),
                        child: const Icon(Icons.edit, size: 25, color: Colors.white,),
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Container(
                width: 343,
                height: 68,
                padding: EdgeInsets.only(left: 16, top: 5),
                decoration: BoxDecoration(
                    color: const Color(0xffF2F4F7),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('닉네임',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          user.userNickname = value;
                        });
                      },
                      initialValue: user.userNickname,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.zero,
                      ),
                    )
                  ],
                )
            ),
            SizedBox(height: 16,),
            Container(
                width: 343,
                height: 68,
                padding: EdgeInsets.only(left: 16, top: 5),
                decoration: BoxDecoration(
                    color: const Color(0xffF2F4F7),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('이메일',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          user.secretEmail = value;
                        });
                      },
                      initialValue: user.secretEmail,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.zero,
                      ),
                    )
                  ],
                )
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 167,
                    height: 68,
                    padding: EdgeInsets.only(left: 16, top: 5),
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F4F7),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('성별',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ToggleButtons(
                          disabledColor: Colors.white,
                          renderBorder: false,
                          borderWidth: 0,
                          borderColor: Colors.white,
                          fillColor: Colors.grey,
                          color: Colors.grey,
                          selectedColor: Colors.white,
                          isSelected: _isSelectedGender,
                          constraints: BoxConstraints(
                            minWidth: 30,
                            minHeight: 30,
                          ),
                          onPressed: (int index) {
                            setState(() {
                              if (index == 0) {
                                _isSelectedGender[0] = true;
                                _isSelectedGender[1] = false;
                                user.userGender = true;
                              } else {
                                _isSelectedGender[0] = false;
                                _isSelectedGender[1] = true;
                                user.userGender = false;
                              }
                            });
                          },
                          children: const [
                            Text('남', style: TextStyle(
                              fontWeight: FontWeight.bold,),),
                            Text('여', style: TextStyle(
                              fontWeight: FontWeight.bold,),),
                            ],
                          ),
                      ],
                    )
                ),
                SizedBox(width: 9,),
                Container(
                    width: 167,
                    height: 68,
                    padding: EdgeInsets.only(left: 16, top: 5),
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F4F7),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('나이',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              user.userAge = int.parse(value);
                            });
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          initialValue: user.userAge.toString(),
                          decoration: InputDecoration(
                            //labelText: '${user!.userAge}',
                            labelStyle: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            contentPadding: EdgeInsets.zero,
                          ),
                        )
                      ],
                    )
                )
              ],
            ),
            SizedBox(height: 16,),
            Container(
              width: 343,
              height: 68,
              padding: EdgeInsets.only(left: 16, top: 5),
              decoration: BoxDecoration(
                  color: const Color(0xffF2F4F7),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('유통기한 알림 설정',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                        value: _isChecked,
                        activeColor: Colors.amber,

                        onChanged: (value) {
                          setState(() {
                            _isChecked = value;
                          });
                          user.alarm = _isChecked;
                        }
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              width: 250,
              height: 40,
              child: TextButton(
                onPressed: () async {
                  try {
                    await patchUser(user);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Patch failed: $e'),),
                    );
                  }
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffF6A90A),
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('저장하기',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
