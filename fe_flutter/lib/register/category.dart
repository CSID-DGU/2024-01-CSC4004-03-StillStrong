import 'package:flutter/material.dart';
import 'package:fe_flutter/register/customIconButton.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/yorijori.png',
          height: 30.0,
        ),
        centerTitle: true,
      ),
      body: Center(
            child: Column(
              children: [
                SizedBox(height: 103.0,),
                Text('선호하는\n음식이 무엇인가요?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text('모두 선택해주세요!',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height:20.0),
                Container(
                  alignment: Alignment.center,
                  width: 340,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          CustomIconButton(
                            buttonText: '한식',
                            icon: Image.asset('assets/images/food/koreanfood.png', width: 80, height: 80,),
                            onPressed: (isPressed, buttonText) {},
                            ),
                          SizedBox(width: 15.0),
                          CustomIconButton(
                            buttonText: '일식',
                            icon: Image.asset('assets/images/food/japanesefood.png', width: 80, height: 80,),
                            onPressed: (isPressed, buttonText) {},
                          ),
                          SizedBox(width: 15.0),
                          CustomIconButton(
                            buttonText: '중식',
                            icon: Image.asset('assets/images/food/chinesefood.png', width: 80, height: 80,),
                            onPressed: (isPressed, buttonText) {},
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          CustomIconButton(
                            buttonText: '양식',
                            icon: Image.asset('assets/images/food/westernfood.png', width: 80, height: 80,),
                            onPressed: (isPressed, buttonText) {},
                          ),
                          SizedBox(width: 15.0),
                          CustomIconButton(
                            buttonText: '아시안',
                            icon: Image.asset('assets/images/food/asianfood.png', width: 80, height: 80,),
                            onPressed: (isPressed, buttonText) {},
                          ),
                          SizedBox(width: 15.0),
                          CustomIconButton(
                            buttonText: '찜•탕',
                            icon: Image.asset('assets/images/food/hotfood.png', width: 80, height: 80,),
                            onPressed: (isPressed, buttonText) {},
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          CustomIconButton(
                            buttonText: '고기',
                            icon: Image.asset('assets/images/food/meat.png', width: 80, height: 80,),
                            onPressed: (isPressed, buttonText) {},
                          ),
                          SizedBox(width: 15.0),
                          CustomIconButton(
                            buttonText: '죽',
                            icon: Image.asset('assets/images/food/porridge.png', width: 80, height: 80,),
                            onPressed: (isPressed, buttonText) {},
                          ),
                          SizedBox(width: 15.0),
                          CustomIconButton(
                            buttonText: '채소',
                            icon: Image.asset('assets/images/food/salad.png', width: 80, height: 80,),
                            onPressed: (isPressed, buttonText) {},
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Container(
                        width: 300.0,
                        height: 30.0,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/register/allergy');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xffF6A90A),
                            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            '확인',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Pretendard',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 90,
                          height: 40,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/register/allergy');
                            },
                              child: Row(
                                children: [
                                  Image.asset('assets/images/noselection.png'),
                                  SizedBox(width: 3),
                                  Text('없어요',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Pretendard',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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